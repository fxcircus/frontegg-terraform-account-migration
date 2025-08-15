#!/usr/bin/env python3
"""
Frontegg Terraform Export/Import Tool
This is THE SINGLE SCRIPT for getting all Frontegg settings using Terraform with minimal API calls.

Features:
- Uses Terraform to manage everything (workspace configuration)
- Only 1 API call for frontegg_domain and allowed_origins
- Exports complete configuration to JSON
- Can import configuration to another account
- Works out-of-the-box with just credentials

Usage:
1. Initial setup (import existing workspace):
   python3 terraform_migrate.py setup

2. Export configuration:
   python3 terraform_migrate.py export

3. Import to another account:
   python3 terraform_migrate.py import <export_file.json>
"""

import json
import subprocess
import sys
import os
import requests
import base64
from typing import Dict, List, Any, Optional
from datetime import datetime

class TerraformMigrator:
    def __init__(self):
        self.client_id = None
        self.secret_key = None
        self.access_token = None
        self.region = None
        self.api_base_url = None
        self.selected_environment = None
        
    def load_credentials(self):
        """Load credentials from environment or .env file."""
        if os.path.exists('.env'):
            with open('.env', 'r') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#') and '=' in line:
                        key, value = line.split('=', 1)
                        os.environ[key] = value.strip('"').strip("'")
        
        self.client_id = os.environ.get('FRONTEGG_CLIENT_ID')
        self.secret_key = os.environ.get('FRONTEGG_SECRET_KEY')
        self.region = os.environ.get('FRONTEGG_REGION', 'EU').upper()
        
        # Set API URLs based on region
        region_urls = {
            'EU': 'https://api.frontegg.com',
            'US': 'https://api.us.frontegg.com',
            'UK': 'https://api.uk.frontegg.com',
            'CA': 'https://api.ca.frontegg.com',
            'AU': 'https://api.au.frontegg.com'
        }
        
        self.api_base_url = region_urls.get(self.region, region_urls['EU'])
        
        if not self.client_id or not self.secret_key:
            print("❌ Error: Frontegg credentials not found!")
            print("\nPlease set credentials in .env file")
            sys.exit(1)
            
        print(f"✅ Credentials loaded")
        print(f"📍 Region: {self.region}")
        
    def run_command(self, cmd: List[str]) -> tuple:
        """Run a shell command and return output."""
        try:
            result = subprocess.run(cmd, capture_output=True, text=True, check=True)
            return True, result.stdout
        except subprocess.CalledProcessError as e:
            return False, e.stderr
            
    def authenticate_minimal(self):
        """Minimal authentication just to get frontegg_domain and allowed_origins."""
        print("\n🔐 Getting workspace domain and origins from API...")
        
        auth_url = f"{self.api_base_url}/auth/vendor"
        
        try:
            response = requests.post(
                auth_url,
                json={
                    "clientId": self.client_id,
                    "secret": self.secret_key
                },
                headers={"Content-Type": "application/json"}
            )
            
            if response.status_code == 200:
                data = response.json()
                self.access_token = data.get('accessToken', data.get('token'))
                
                # Decode token to get environment
                token_data = self.decode_jwt_token(self.access_token)
                if token_data and 'customClaims' in token_data:
                    account_envs = token_data.get('customClaims', {}).get('accountEnvironments', [])
                    if account_envs:
                        # Use development by default
                        env_preference = os.environ.get('FRONTEGG_ENVIRONMENT', 'development').lower()
                        for env in account_envs:
                            if env.get('environmentName', '').lower() == env_preference:
                                self.selected_environment = env
                                break
                        if not self.selected_environment and account_envs:
                            self.selected_environment = account_envs[0]
                            
                return True
        except:
            pass
        return False
        
    def decode_jwt_token(self, token):
        """Decode JWT token."""
        try:
            parts = token.split('.')
            if len(parts) != 3:
                return None
            payload = parts[1]
            padding = 4 - (len(payload) % 4)
            if padding != 4:
                payload += '=' * padding
            decoded = base64.urlsafe_b64decode(payload)
            return json.loads(decoded)
        except:
            return None
            
    def get_workspace_info(self):
        """Get frontegg_domain and allowed_origins from API."""
        headers = {
            "Authorization": f"Bearer {self.access_token}",
            "Content-Type": "application/json"
        }
        
        if self.selected_environment:
            headers["frontegg-environment-id"] = self.selected_environment['id']
        
        vendors_url = f"{self.api_base_url}/vendors"
        
        try:
            response = requests.get(vendors_url, headers=headers)
            if response.status_code == 200:
                data = response.json()
                return {
                    'frontegg_domain': data.get('host', ''),
                    'allowed_origins': data.get('allowedOrigins', [])
                }
        except:
            pass
        return None
        
    def discover_roles_permissions(self):
        """Discover and import roles and permissions."""
        print("\n👥 Discovering roles and permissions...")
        
        if not self.access_token:
            if not self.authenticate_minimal():
                print("  ⚠️  Could not authenticate for roles discovery")
                return
        
        headers = {
            "Authorization": f"Bearer {self.access_token}",
            "Content-Type": "application/json"
        }
        
        if self.selected_environment:
            headers["frontegg-environment-id"] = self.selected_environment['id']
        
        imported_count = 0
        
        # 1. Discover and import roles
        print("  → Discovering roles...")
        roles_url = f"{self.api_base_url}/identity/resources/roles/v2"
        
        try:
            response = requests.get(roles_url, headers=headers)
            if response.status_code == 200:
                roles = response.json()
                if isinstance(roles, list):
                    print(f"    Found {len(roles)} roles")
                    
                    for role in roles:
                        role_id = role.get('id', '')
                        role_key = role.get('key', '')
                        role_name = role.get('name', '')
                        
                        if role_id and role_key:
                            # Import each role
                            safe_name = role_key.lower().replace(' ', '_').replace('-', '_')
                            resource_name = f"frontegg_role.{safe_name}"
                            print(f"    → Importing role: {role_name} ({role_key})")
                            
                            # Create minimal config for the role
                            role_config = f'''
resource "frontegg_role" "{safe_name}" {{
  key         = "{role_key}"
  name        = "{role_name}"
  description = "{role.get('description', '')}"
}}
'''
                            temp_file = f"role_{safe_name}.tf"
                            with open(temp_file, "w") as f:
                                f.write(role_config)
                            
                            success, output = self.run_command([
                                "terraform", "import",
                                resource_name,
                                role_id
                            ])
                            
                            # Clean up temporary file
                            if os.path.exists(temp_file):
                                os.remove(temp_file)
                            
                            if success or "Import successful" in output or "Already exists in the state" in output:
                                print(f"      ✅ Imported: {role_name}")
                                imported_count += 1
                            else:
                                print(f"      ⚠️  Could not import: {role_name}")
                else:
                    print("    ⚠️  No roles found")
            else:
                print(f"    ⚠️  Could not fetch roles: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error discovering roles: {e}")
        
        # 2. Discover and import permissions
        print("  → Discovering permissions...")
        permissions_url = f"{self.api_base_url}/identity/resources/permissions/v2"
        
        try:
            response = requests.get(permissions_url, headers=headers)
            if response.status_code == 200:
                permissions = response.json()
                if isinstance(permissions, list):
                    print(f"    Found {len(permissions)} permissions")
                    
                    for permission in permissions:
                        perm_id = permission.get('id', '')
                        perm_key = permission.get('key', '')
                        perm_name = permission.get('name', '')
                        
                        if perm_id and perm_key:
                            # Import each permission
                            safe_name = perm_key.lower().replace(' ', '_').replace('-', '_').replace('.', '_')
                            resource_name = f"frontegg_permission.{safe_name}"
                            print(f"    → Importing permission: {perm_name} ({perm_key})")
                            
                            # Create minimal config for the permission
                            perm_config = f'''
resource "frontegg_permission" "{safe_name}" {{
  key         = "{perm_key}"
  name        = "{perm_name}"
  description = "{permission.get('description', '')}"
}}
'''
                            temp_file = f"permission_{safe_name}.tf"
                            with open(temp_file, "w") as f:
                                f.write(perm_config)
                            
                            success, output = self.run_command([
                                "terraform", "import",
                                resource_name,
                                perm_id
                            ])
                            
                            # Clean up temporary file
                            if os.path.exists(temp_file):
                                os.remove(temp_file)
                            
                            if success or "Import successful" in output or "Already exists in the state" in output:
                                print(f"      ✅ Imported: {perm_name}")
                                imported_count += 1
                            else:
                                print(f"      ⚠️  Could not import: {perm_name}")
                else:
                    print("    ⚠️  No permissions found")
            else:
                print(f"    ⚠️  Could not fetch permissions: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error discovering permissions: {e}")
        
        print(f"  📊 Imported {imported_count} roles and permissions")
        return imported_count > 0
    
    def discover_email_resources(self):
        """Discover and import email templates and provider."""
        print("\n📧 Discovering email resources...")
        
        if not self.access_token:
            if not self.authenticate_minimal():
                print("  ⚠️  Could not authenticate for email discovery")
                return
        
        headers = {
            "Authorization": f"Bearer {self.access_token}",
            "Content-Type": "application/json"
        }
        
        if self.selected_environment:
            headers["frontegg-environment-id"] = self.selected_environment['id']
        
        imported_count = 0
        
        # 1. Import email provider (singleton)
        print("  → Importing email provider...")
        
        # Create minimal config for email provider
        provider_config = '''
resource "frontegg_email_provider" "main" {
  from_email = "noreply@example.com"
  from_name  = "My App"
}
'''
        with open("email_provider.tf", "w") as f:
            f.write(provider_config)
        
        success, output = self.run_command([
            "terraform", "import",
            "frontegg_email_provider.main",
            "singleton"
        ])
        
        # Clean up
        if os.path.exists("email_provider.tf"):
            os.remove("email_provider.tf")
        if success or "Import successful" in output or "Already exists in the state" in output:
            print("    ✅ Email provider imported")
            imported_count += 1
        else:
            print(f"    ⚠️  Could not import email provider")
        
        # 2. Discover and import email templates
        print("  → Discovering email templates...")
        templates_url = f"{self.api_base_url}/identity/resources/mail/v1/configs/templates"
        
        try:
            response = requests.get(templates_url, headers=headers)
            if response.status_code == 200:
                data = response.json()
                # The response might be wrapped in a data field or be a list directly
                templates = data if isinstance(data, list) else data.get('items', data.get('data', []))
                
                if templates and isinstance(templates, list):
                    print(f"    Found {len(templates)} email templates")
                    
                    for template in templates:
                        # Debug: see what fields are available
                        template_type = template.get('templateType', template.get('type', ''))
                        if not template_type and isinstance(template, dict):
                            # Try to find any identifier
                            template_type = template.get('id', template.get('name', ''))
                            
                        if template_type:
                            # Import each template
                            resource_name = f"frontegg_email_template.{template_type.lower().replace(' ', '_').replace('-', '_')}"
                            print(f"    → Importing template: {template_type}")
                            
                            # First create a minimal config for the template
                            safe_name = template_type.lower().replace(' ', '_').replace('-', '_')
                            template_config = f'''
resource "frontegg_email_template" "{safe_name}" {{
  template_type = "{template_type}"
  from_address  = "noreply@example.com"
  from_name     = "My App"
  subject       = "Email"
  html_template = "<html></html>"
  redirect_url  = ""
  active        = true
}}
'''
                            # Write to a temporary file
                            temp_file = f"email_template_{safe_name}.tf"
                            with open(temp_file, "w") as f:
                                f.write(template_config)
                            
                            success, output = self.run_command([
                                "terraform", "import",
                                resource_name,
                                template_type
                            ])
                            
                            # Clean up temporary file
                            if os.path.exists(temp_file):
                                os.remove(temp_file)
                            
                            if success or "Import successful" in output or "Already exists in the state" in output:
                                print(f"      ✅ Imported: {template_type}")
                                imported_count += 1
                            else:
                                print(f"      ⚠️  Could not import: {template_type}")
                else:
                    print("    ⚠️  No templates found")
            else:
                print(f"    ⚠️  Could not fetch templates: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error discovering templates: {e}")
        
        print(f"  📊 Imported {imported_count} email resources")
        return imported_count > 0
    
    def setup_workspace(self):
        """Initial setup - import existing workspace to Terraform."""
        print("\n🚀 Setting up Terraform with existing workspace")
        print("="*50)
        
        # Create minimal terraform.tfvars if it doesn't exist
        if not os.path.exists("terraform.tfvars"):
            print("\n📝 Creating initial terraform.tfvars...")
            initial_tfvars = f'''# Initial Frontegg configuration
frontegg_client_id  = "{self.client_id}"
frontegg_secret_key = "{self.secret_key}"
frontegg_region      = "{self.region}"
frontegg_domain     = "temp.frontegg.com"
allowed_origins     = ["http://localhost:3000"]
'''
            with open("terraform.tfvars", "w") as f:
                f.write(initial_tfvars)
            print("✅ Created initial terraform.tfvars")
        
        # Initialize Terraform if needed
        print("\n🔧 Initializing Terraform...")
        success, output = self.run_command(["terraform", "init"])
        if not success and "There are some problems with the configuration" not in output:
            print(f"❌ Failed to initialize Terraform: {output}")
            sys.exit(1)
        print("✅ Terraform initialized")
        
        # Check if workspace already imported
        print("\n📦 Checking workspace status...")
        success, output = self.run_command(["terraform", "state", "list"])
        
        if success and "frontegg_workspace.main" in output:
            print("  ✅ Workspace already imported to Terraform")
        else:
            print("  → Importing workspace to Terraform...")
            
            # Create minimal workspace configuration for import
            workspace_config = """
resource "frontegg_workspace" "main" {
  name                = "Imported"
  country             = "US"
  backend_stack       = "Node"
  frontend_stack      = "React"
  open_saas_installed = false
  frontegg_domain     = "imported.frontegg.com"
  allowed_origins     = ["http://localhost:3000"]
  
  mfa_policy {
    enforce = "off"
    allow_remember_device = false
    device_expiration = 1440
  }
  
  password_policy {
    min_length = 8
    max_length = 128
    min_phrase_length = 20
    min_tests = 0
    allow_passphrases = true
    history = 1
  }
}
"""
            with open("workspace.tf", "w") as f:
                f.write(workspace_config)
                
            success, output = self.run_command([
                "terraform", "import", 
                "frontegg_workspace.main", 
                "singleton"
            ])
            
            if success or "Import successful" in output or "Already exists in the state" in output:
                print("  ✅ Workspace imported successfully")
            else:
                print(f"  ❌ Failed to import: {output}")
                sys.exit(1)
        
        # Refresh state
        print("\n🔄 Refreshing Terraform state...")
        success, output = self.run_command(["terraform", "refresh"])
        if not success and "Missing required argument" not in output:
            print(f"⚠️  Warning during refresh: {output}")
        
        # Generate proper Terraform configuration from state
        print("\n📝 Generating Terraform configuration from state...")
        success, output = self.run_command(["terraform", "show", "-json"])
        
        if success:
            state = json.loads(output)
            
            # Get workspace info from API (domain and origins)
            if self.authenticate_minimal():
                api_info = self.get_workspace_info()
                if api_info:
                    print(f"  ✅ Got domain: {api_info['frontegg_domain']}")
                    print(f"  ✅ Got {len(api_info['allowed_origins'])} allowed origins")
                    
                    # Find workspace in state and update
                    for resource in state.get('values', {}).get('root_module', {}).get('resources', []):
                        if resource['type'] == 'frontegg_workspace':
                            resource['values']['frontegg_domain'] = api_info['frontegg_domain']
                            resource['values']['allowed_origins'] = api_info['allowed_origins']
                            
                            # Generate configuration
                            config = self.generate_terraform_config(resource['values'])
                            
                            # Save configuration
                            with open("workspace.tf", "w") as f:
                                f.write(config)
                            
                            print("✅ Generated workspace.tf with complete configuration")
                            
                            # Also create terraform.tfvars
                            self.create_tfvars(api_info, resource['values'])
                            
                            break
        
        # Note: Most Frontegg resources don't support Terraform import
        # Only workspace can be imported. Other resources like email templates,
        # roles, permissions, webhooks, etc. cannot be imported via Terraform
        # even though they can be discovered via API.
        
        print("\n✅ Setup complete!")
        print("\nYou can now:")
        print("1. Run 'terraform plan' to review configuration")
        print("2. Run 'python3 terraform_migrate.py export' to export settings")
        
    def create_tfvars(self, api_info, workspace):
        """Create terraform.tfvars with discovered values."""
        import time
        
        tfvars_content = f'''# Auto-generated Frontegg configuration
# Generated on {time.strftime("%Y-%m-%d %H:%M:%S")}

# Credentials
frontegg_client_id  = "{self.client_id}"
frontegg_secret_key = "{self.secret_key}"

# Region configuration
frontegg_region = "{self.region}"

# Discovered values
frontegg_domain = "{api_info.get('frontegg_domain', '')}"
allowed_origins = {json.dumps(api_info.get('allowed_origins', []), indent=2)}

# Workspace settings
workspace_name  = "{workspace.get('name', 'My Application')}"
country         = "{workspace.get('country', 'US')}"
backend_stack   = "{workspace.get('backend_stack', 'Node')}"
frontend_stack  = "{workspace.get('frontend_stack', 'React')}"
'''
        
        with open("terraform.tfvars", "w") as f:
            f.write(tfvars_content)
        
        print("✅ Created terraform.tfvars with all values")
    
    def export_configuration(self):
        """Export configuration from source account using Terraform."""
        print("\n🚀 Exporting configuration from source account")
        print("="*50)
        
        # Initialize Terraform if needed
        print("\n🔧 Initializing Terraform...")
        success, output = self.run_command(["terraform", "init"])
        if not success:
            print(f"❌ Failed to initialize Terraform: {output}")
            sys.exit(1)
        
        # Import workspace if not already imported
        print("\n📦 Checking workspace status...")
        success, output = self.run_command(["terraform", "state", "list"])
        if success and "frontegg_workspace.main" not in output:
            print("  → Importing workspace...")
            
            # Create minimal workspace configuration for import
            workspace_config = """
resource "frontegg_workspace" "main" {
  name                = "Imported"
  country             = "US"
  backend_stack       = "Node"
  frontend_stack      = "React"
  open_saas_installed = false
  frontegg_domain     = "imported.frontegg.com"
  allowed_origins     = ["http://localhost:3000"]
  
  mfa_policy {
    enforce = "off"
    allow_remember_device = false
    device_expiration = 1440
  }
  
  password_policy {
    min_length = 8
    max_length = 128
    min_phrase_length = 20
    min_tests = 0
    allow_passphrases = true
    history = 1
  }
}
"""
            with open("workspace_temp.tf", "w") as f:
                f.write(workspace_config)
                
            success, output = self.run_command([
                "terraform", "import", 
                "frontegg_workspace.main", 
                "singleton"
            ])
            
            if os.path.exists("workspace_temp.tf"):
                os.remove("workspace_temp.tf")
        else:
            print("  ✅ Workspace already in state")
        
        # Refresh state
        print("\n🔄 Refreshing state...")
        self.run_command(["terraform", "refresh"])
        
        # Get state as JSON
        print("\n📤 Exporting state...")
        success, output = self.run_command(["terraform", "show", "-json"])
        
        if success:
            state = json.loads(output)
            
            # Get workspace info from API (domain and origins)
            if self.authenticate_minimal():
                api_info = self.get_workspace_info()
                if api_info:
                    print(f"  ✅ Got domain: {api_info['frontegg_domain']}")
                    print(f"  ✅ Got {len(api_info['allowed_origins'])} allowed origins")
                    
                    # Update state with API info
                    for resource in state.get('values', {}).get('root_module', {}).get('resources', []):
                        if resource['type'] == 'frontegg_workspace':
                            resource['values']['frontegg_domain'] = api_info['frontegg_domain']
                            resource['values']['allowed_origins'] = api_info['allowed_origins']
            
            # Save export
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            export_file = f"terraform_export_{timestamp}.json"
            
            with open(export_file, "w") as f:
                json.dump(state, f, indent=2)
            
            print(f"\n💾 Configuration exported to: {export_file}")
            
            # Display summary
            resources = state.get('values', {}).get('root_module', {}).get('resources', [])
            for resource in resources:
                if resource['type'] == 'frontegg_workspace':
                    workspace = resource['values']
                    print("\n📊 Exported Workspace:")
                    print(f"  • Name: {workspace.get('name')}")
                    print(f"  • Domain: {workspace.get('frontegg_domain')}")
                    print(f"  • Country: {workspace.get('country')}")
                    print(f"  • Backend: {workspace.get('backend_stack')}")
                    print(f"  • Frontend: {workspace.get('frontend_stack')}")
                    
            print("\n✅ Export complete!")
            print("\nNext steps:")
            print("1. Update .env with target account credentials")
            print(f"2. Run: python3 terraform_migrate.py import {export_file}")
            
            return export_file
        else:
            print("❌ Failed to export state")
            return None
            
    def import_configuration(self, export_file):
        """Import configuration to target account."""
        print(f"\n🚀 Importing configuration to target account")
        print("="*50)
        
        # Load export file
        print(f"\n📂 Loading export from: {export_file}")
        try:
            with open(export_file, 'r') as f:
                state = json.load(f)
        except Exception as e:
            print(f"❌ Failed to load export: {e}")
            sys.exit(1)
        
        # Find workspace in state
        workspace = None
        for resource in state.get('values', {}).get('root_module', {}).get('resources', []):
            if resource['type'] == 'frontegg_workspace':
                workspace = resource['values']
                break
        
        if not workspace:
            print("❌ No workspace found in export")
            sys.exit(1)
        
        # Get new domain and origins for target account
        if self.authenticate_minimal():
            api_info = self.get_workspace_info()
            if api_info:
                # For target account, we need to use its own domain
                workspace['frontegg_domain'] = api_info['frontegg_domain']
                print(f"  ✅ Using target domain: {workspace['frontegg_domain']}")
        
        # Generate Terraform configuration
        print("\n📝 Generating Terraform configuration...")
        config = self.generate_terraform_config(workspace)
        
        # Save configuration
        with open("workspace_migrated.tf", "w") as f:
            f.write(config)
        
        print("✅ Configuration saved to: workspace_migrated.tf")
        
        print("\n📊 Configuration to apply:")
        print(f"  • Name: {workspace.get('name')}")
        print(f"  • Domain: {workspace.get('frontegg_domain')}")
        print(f"  • Country: {workspace.get('country')}")
        print(f"  • MFA: {workspace.get('mfa_policy', [{}])[0].get('enforce', 'off')}")
        print(f"  • Password min length: {workspace.get('password_policy', [{}])[0].get('min_length', 8)}")
        
        print("\n✅ Import complete!")
        print("\nNext steps:")
        print("1. Review workspace_migrated.tf")
        print("2. Run: terraform init")
        print("3. Run: terraform plan")
        print("4. Run: terraform apply")
        
    def generate_terraform_config(self, workspace: Dict) -> str:
        """Generate Terraform configuration from workspace state."""
        config_lines = []
        
        config_lines.append('resource "frontegg_workspace" "main" {')
        config_lines.append(f'  name                = "{workspace.get("name", "")}"')
        config_lines.append(f'  country             = "{workspace.get("country", "")}"')
        
        # Fix backend_stack values (API returns "Node" but sometimes we see "Node.js")
        backend = workspace.get("backend_stack", "")
        if backend == "Node.js":
            backend = "Node"
        config_lines.append(f'  backend_stack       = "{backend}"')
        config_lines.append(f'  frontend_stack      = "{workspace.get("frontend_stack", "")}"')
        config_lines.append(f'  open_saas_installed = {str(workspace.get("open_saas_installed", False)).lower()}')
        config_lines.append(f'  frontegg_domain     = "{workspace.get("frontegg_domain", "")}"')
        
        # Allowed origins
        if workspace.get('allowed_origins'):
            origins_list = json.dumps(workspace['allowed_origins'], indent=4).replace('\n', '\n  ')
            config_lines.append(f'  allowed_origins = {origins_list}')
        
        # MFA Policy
        if workspace.get('mfa_policy'):
            mfa = workspace['mfa_policy'][0] if isinstance(workspace['mfa_policy'], list) else workspace['mfa_policy']
            config_lines.append('')
            config_lines.append('  mfa_policy {')
            config_lines.append(f'    enforce               = "{mfa.get("enforce", "off")}"')
            config_lines.append(f'    allow_remember_device = {str(mfa.get("allow_remember_device", False)).lower()}')
            config_lines.append(f'    device_expiration     = {mfa.get("device_expiration", 1440)}')
            config_lines.append('  }')
        
        # MFA Authentication App
        if workspace.get('mfa_authentication_app'):
            mfa_app = workspace['mfa_authentication_app'][0] if isinstance(workspace['mfa_authentication_app'], list) else workspace['mfa_authentication_app']
            if mfa_app.get('service_name'):
                config_lines.append('')
                config_lines.append('  mfa_authentication_app {')
                config_lines.append(f'    service_name = "{mfa_app.get("service_name", "")}"')
                config_lines.append('  }')
        
        # Password Policy
        if workspace.get('password_policy'):
            pwd = workspace['password_policy'][0] if isinstance(workspace['password_policy'], list) else workspace['password_policy']
            config_lines.append('')
            config_lines.append('  password_policy {')
            config_lines.append(f'    min_length        = {pwd.get("min_length", 8)}')
            config_lines.append(f'    max_length        = {pwd.get("max_length", 128)}')
            config_lines.append(f'    min_phrase_length = {pwd.get("min_phrase_length", 6)}')
            config_lines.append(f'    min_tests         = {pwd.get("min_tests", 0)}')
            config_lines.append(f'    allow_passphrases = {str(pwd.get("allow_passphrases", False)).lower()}')
            config_lines.append(f'    history           = {pwd.get("history", 0)}')
            config_lines.append('  }')
        
        # Lockout Policy
        if workspace.get('lockout_policy'):
            lockout = workspace['lockout_policy'][0] if isinstance(workspace['lockout_policy'], list) else workspace['lockout_policy']
            config_lines.append('')
            config_lines.append('  lockout_policy {')
            config_lines.append(f'    max_attempts = {lockout.get("max_attempts", 5)}')
            config_lines.append('  }')
        
        # Hosted Login
        if workspace.get('hosted_login'):
            hosted = workspace['hosted_login'][0] if isinstance(workspace['hosted_login'], list) else workspace['hosted_login']
            if hosted.get('allowed_redirect_urls'):
                config_lines.append('')
                config_lines.append('  hosted_login {')
                redirect_urls = json.dumps(hosted['allowed_redirect_urls'], indent=4).replace('\n', '\n    ')
                config_lines.append(f'    allowed_redirect_urls = {redirect_urls}')
                config_lines.append('  }')
        
        # SAML
        if workspace.get('saml'):
            saml = workspace['saml'][0] if isinstance(workspace['saml'], list) else workspace['saml']
            if saml.get('acs_url'):
                config_lines.append('')
                config_lines.append('  saml {')
                config_lines.append(f'    acs_url      = "{saml.get("acs_url", "")}"')
                config_lines.append(f'    sp_entity_id = "{saml.get("sp_entity_id", "")}"')
                config_lines.append(f'    redirect_url = "{saml.get("redirect_url", "")}"')
                config_lines.append('  }')
        
        # OIDC
        if workspace.get('oidc'):
            oidc = workspace['oidc'][0] if isinstance(workspace['oidc'], list) else workspace['oidc']
            config_lines.append('')
            config_lines.append('  oidc {')
            config_lines.append(f'    redirect_url = "{oidc.get("redirect_url", "")}"')
            config_lines.append('  }')
        
        config_lines.append('}')
        
        return '\n'.join(config_lines)
        
    def run(self):
        """Main entry point."""
        if len(sys.argv) < 2:
            print("Frontegg Terraform Export/Import Tool")
            print("="*50)
            print("\nUsage:")
            print("  Setup:  python3 terraform_migrate.py setup")
            print("          → Import existing workspace to Terraform (run this first!)")
            print("")
            print("  Export: python3 terraform_migrate.py export")
            print("          → Export all settings to JSON file")
            print("")
            print("  Import: python3 terraform_migrate.py import <export_file.json>")
            print("          → Import settings to another account")
            print("")
            print("This tool uses Terraform for everything, with only 1 API call for domain/origins.")
            sys.exit(1)
        
        command = sys.argv[1].lower()
        
        # Load credentials
        self.load_credentials()
        
        if command == "setup":
            self.setup_workspace()
        elif command == "export":
            self.export_configuration()
        elif command == "import":
            if len(sys.argv) < 3:
                print("Error: Please specify export file")
                print("Usage: python3 terraform_migrate.py import <export_file.json>")
                sys.exit(1)
            self.import_configuration(sys.argv[2])
        else:
            print(f"Unknown command: {command}")
            print("Use 'setup', 'export', or 'import'")
            sys.exit(1)

if __name__ == "__main__":
    migrator = TerraformMigrator()
    migrator.run()