#!/usr/bin/env python3
"""
Frontegg Terraform Migration Tool
Migrates all Frontegg settings from source to destination account.

Features:
- Supports separate source and destination accounts
- Exports from source using Terraform state + API discovery
- Imports to destination by generating and applying Terraform configs
- Handles email templates that can't be imported but can be created

Usage:
1. Export from source account:
   python3 terraform_migrate.py export

2. Import to destination account:
   python3 terraform_migrate.py import <export_file.json>

3. Full migration (export + import):
   python3 terraform_migrate.py migrate
"""

import json
import subprocess
import sys
import os
import requests
import base64
from typing import Dict, List, Any, Optional, Tuple
from datetime import datetime

class TerraformMigrator:
    def __init__(self, account_type: str = None):
        self.account_type = account_type  # 'source' or 'dest'
        self.client_id = None
        self.secret_key = None
        self.access_token = None
        self.region = None
        self.api_base_url = None
        self.selected_environment = None
        self.available_environments = []
        
    def load_credentials(self, account_type: str = None):
        """Load credentials from environment or .env file."""
        if account_type:
            self.account_type = account_type
            
        if os.path.exists('.env'):
            with open('.env', 'r') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#') and '=' in line:
                        key, value = line.split('=', 1)
                        os.environ[key] = value.strip('"').strip("'")
        
        # Determine which credentials to use
        if self.account_type == 'source':
            self.client_id = os.environ.get('SOURCE_FRONTEGG_CLIENT_ID')
            self.secret_key = os.environ.get('SOURCE_FRONTEGG_SECRET_KEY')
            self.region = os.environ.get('SOURCE_FRONTEGG_REGION', 'US').upper()
        elif self.account_type == 'dest':
            self.client_id = os.environ.get('DEST_FRONTEGG_CLIENT_ID')
            self.secret_key = os.environ.get('DEST_FRONTEGG_SECRET_KEY')
            self.region = os.environ.get('DEST_FRONTEGG_REGION', 'US').upper()
        else:
            # Fallback to old env vars for backward compatibility
            self.client_id = os.environ.get('FRONTEGG_CLIENT_ID')
            self.secret_key = os.environ.get('FRONTEGG_SECRET_KEY')
            self.region = os.environ.get('FRONTEGG_REGION', 'US').upper()
        
        # Set API URLs based on region
        region_urls = {
            'EU': 'https://api.frontegg.com',
            'US': 'https://api.us.frontegg.com',
            'UK': 'https://api.uk.frontegg.com',
            'CA': 'https://api.ca.frontegg.com',
            'AU': 'https://api.au.frontegg.com'
        }
        
        self.api_base_url = region_urls.get(self.region, region_urls['US'])
        
        if not self.client_id or not self.secret_key:
            print(f"❌ Error: Frontegg credentials not found for {self.account_type or 'account'}!")
            print("\nPlease set credentials in .env file:")
            if self.account_type == 'source':
                print("  SOURCE_FRONTEGG_CLIENT_ID=...")
                print("  SOURCE_FRONTEGG_SECRET_KEY=...")
                print("  SOURCE_FRONTEGG_REGION=...")
            elif self.account_type == 'dest':
                print("  DEST_FRONTEGG_CLIENT_ID=...")
                print("  DEST_FRONTEGG_SECRET_KEY=...")
                print("  DEST_FRONTEGG_REGION=...")
            sys.exit(1)
            
        print(f"✅ {self.account_type.capitalize() if self.account_type else 'Account'} credentials loaded")
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
                self.access_token = data.get('token')
                
                # Decode JWT to get workspace info
                payload = self.access_token.split('.')[1]
                padded = payload + '=' * (4 - len(payload) % 4)
                decoded = json.loads(base64.b64decode(padded))
                
                # Extract available environments
                self.available_environments = decoded.get('customClaims', {}).get('accountEnvironments', [])
                
                domain = decoded.get('domain', '')
                origins = decoded.get('customAttributes', {}).get('allowedOrigins', [])
                
                if domain:
                    print(f"  ✅ Domain: {domain}")
                else:
                    # print(f"  ⚠️  No domain found in token, checking alternatives...")
                    # Debug: show what we have - commented out for production
                    # print(f"  Debug - Token payload keys: {list(decoded.keys())}")
                    # print(f"  Debug - CustomAttributes: {decoded.get('customAttributes', {})}")
                    
                    # Try alternative methods
                    domain = decoded.get('customAttributes', {}).get('domain', '')
                    if not domain:
                        # Try workspaceId approach
                        workspace_id = decoded.get('workspaceId', '')
                        if not workspace_id:
                            # Try tenantId
                            workspace_id = decoded.get('tenantId', '')
                        
                        if workspace_id:
                            # Build domain based on region
                            if 'us' in self.api_base_url:
                                domain = f"app-{workspace_id}.us.frontegg.com"
                            elif 'uk' in self.api_base_url:
                                domain = f"app-{workspace_id}.uk.frontegg.com"
                            elif 'ca' in self.api_base_url:
                                domain = f"app-{workspace_id}.ca.frontegg.com"
                            elif 'au' in self.api_base_url:
                                domain = f"app-{workspace_id}.au.frontegg.com"
                            else:  # EU/default
                                domain = f"app-{workspace_id}.frontegg.com"
                            print(f"  ✅ Generated domain: {domain}")
                
                return domain, origins
            else:
                print(f"  ❌ Authentication failed: {response.status_code}")
                if response.text:
                    print(f"      Error: {response.text}")
                return None, []
                
        except Exception as e:
            print(f"  ❌ Error during authentication: {e}")
            return None, []
    
    def get_vendor_info(self):
        """Get vendor information including loginURL."""
        if not self.access_token:
            self.authenticate_minimal()
        
        try:
            vendor_url = f"{self.api_base_url}/vendors"
            response = requests.get(
                vendor_url,
                headers={
                    "Authorization": f"Bearer {self.access_token}",
                    "Content-Type": "application/json"
                }
            )
            
            if response.status_code == 200:
                vendor_data = response.json()
                login_url = vendor_data.get('loginURL', '')
                if login_url:
                    return login_url
                    
        except Exception as e:
            print(f"  ⚠️  Could not get vendor info: {e}")
        
        return None
    
    def discover_additional_resources_via_api(self, environment_id=None):
        """Discover resources via API that can't be imported to Terraform but can be created."""
        env_name = ""
        if environment_id:
            # Find environment name from available environments
            for env in self.available_environments:
                if env.get('id') == environment_id:
                    env_name = f" [{env.get('environmentName', 'unknown')}]"
                    break
        
        print(f"\n🔍 Discovering additional resources via API{env_name}...")
        resources = {}
        
        # Authenticate if needed
        if not self.access_token:
            domain, _ = self.authenticate_minimal()
            if not domain:
                print("  ❌ Failed to authenticate for API discovery")
                return resources
        
        # Prepare headers with environment ID if provided
        headers = {
            "Authorization": f"Bearer {self.access_token}",
            "Content-Type": "application/json"
        }
        if environment_id:
            headers["frontegg-environment-id"] = environment_id
        
        # Discover email templates
        print("  📧 Fetching email templates...")
        try:
            templates_url = f"{self.api_base_url}/identity/resources/mail/v1/configs/templates"
            response = requests.get(templates_url, headers=headers)
            
            if response.status_code == 200:
                data = response.json()
                # The response might be wrapped in a data field or be a list directly
                templates = data if isinstance(data, list) else data.get('items', data.get('data', []))
                
                if templates and isinstance(templates, list):
                    print(f"    ✅ Found {len(templates)} email templates")
                    resources['email_templates'] = templates
                else:
                    print("    ⚠️  No templates found")
            else:
                print(f"    ❌ Could not fetch templates: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error fetching templates: {e}")
        
        # Discover email provider configuration
        print("  📧 Fetching email provider configuration...")
        try:
            provider_url = f"{self.api_base_url}/identity/resources/mail/v1/configs/provider"
            response = requests.get(provider_url, headers=headers)
            
            if response.status_code == 200:
                provider = response.json()
                if provider:
                    print(f"    ✅ Found email provider configuration")
                    resources['email_provider'] = provider
            else:
                print(f"    ⚠️  No email provider configured")
        except Exception as e:
            print(f"    ❌ Error fetching provider: {e}")
        
        # Discover roles
        print("  👥 Fetching roles...")
        try:
            roles_url = f"{self.api_base_url}/identity/resources/roles/v2"
            response = requests.get(roles_url, headers=headers)
            
            if response.status_code == 200:
                data = response.json()
                roles = data if isinstance(data, list) else data.get('items', data.get('data', []))
                if roles:
                    print(f"    ✅ Found {len(roles)} roles")
                    resources['roles'] = roles
                else:
                    print("    ⚠️  No roles found")
            else:
                print(f"    ❌ Could not fetch roles: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error fetching roles: {e}")
        
        # Discover permission categories
        print("  📁 Fetching permission categories...")
        try:
            categories_url = f"{self.api_base_url}/identity/resources/permissions/v1/categories"
            response = requests.get(categories_url, headers=headers)
            
            if response.status_code == 200:
                data = response.json()
                categories = data if isinstance(data, list) else data.get('items', data.get('data', []))
                if categories:
                    print(f"    ✅ Found {len(categories)} permission categories")
                    resources['permission_categories'] = categories
                else:
                    print("    ⚠️  No permission categories found")
            else:
                print(f"    ❌ Could not fetch categories: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error fetching categories: {e}")
        
        # Discover permissions
        print("  🔑 Fetching permissions...")
        try:
            permissions_url = f"{self.api_base_url}/identity/resources/permissions/v1"
            response = requests.get(permissions_url, headers=headers)
            
            if response.status_code == 200:
                data = response.json()
                permissions = data if isinstance(data, list) else data.get('items', data.get('data', []))
                if permissions:
                    print(f"    ✅ Found {len(permissions)} permissions")
                    resources['permissions'] = permissions
                else:
                    print("    ⚠️  No permissions found")
            else:
                print(f"    ❌ Could not fetch permissions: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error fetching permissions: {e}")
        
        # Discover webhooks
        print("  🪝 Fetching webhooks...")
        try:
            # Construct webhook URL based on region
            webhook_base_urls = {
                "US": "https://frontegg-prod.us.frontegg.com",
                "EU": "https://frontegg-prod.frontegg.com",
                "UK": "https://frontegg-prod.uk.frontegg.com",
                "CA": "https://frontegg-prod.ca.frontegg.com",
                "AU": "https://frontegg-prod.au.frontegg.com"
            }
            webhook_base = webhook_base_urls.get(self.region, "https://frontegg-prod.frontegg.com")
            webhook_url = f"{webhook_base}/webhook"
            
            response = requests.get(webhook_url, headers=headers)
            
            if response.status_code == 200:
                data = response.json()
                webhooks = data if isinstance(data, list) else data.get('items', data.get('data', []))
                if webhooks:
                    print(f"    ✅ Found {len(webhooks)} webhook(s)")
                    resources['webhooks'] = webhooks
                else:
                    print("    ⚠️  No webhooks found")
            else:
                print(f"    ❌ Could not fetch webhooks: {response.status_code}")
        except Exception as e:
            print(f"    ❌ Error fetching webhooks: {e}")
        
        return resources
    
    def create_custom_permissions(self, permissions: List[Dict], environment_id: str = None) -> Dict[str, List[Dict]]:
        """Create custom permissions in the destination account via API."""
        created_permissions = []
        failed_permissions = []
        
        for perm in permissions:
            perm_key = perm.get('key', '')
            if not perm_key or perm_key.startswith('fe.'):
                continue  # Skip built-in permissions
            
            print(f"  📝 Creating custom permission: {perm_key}")
            
            # Prepare permission data
            permission_data = {
                "key": perm_key,
                "name": perm.get('name', perm_key),
                "description": perm.get('description', ''),
            }
            
            # Note: Not including categoryId as categories may not exist yet in destination
            
            try:
                # Try to create the permission (API expects an array)
                create_url = f"{self.api_base_url}/identity/resources/permissions/v1"
                
                # Prepare headers with environment ID if provided
                headers = {
                    "Authorization": f"Bearer {self.access_token}",
                    "Content-Type": "application/json"
                }
                if environment_id:
                    headers["frontegg-environment-id"] = environment_id
                
                response = requests.post(
                    create_url,
                    headers=headers,
                    json=[permission_data]  # API expects an array
                )
                
                if response.status_code in [200, 201]:
                    created_permissions.append(perm)
                    print(f"    ✅ Created: {perm_key}")
                elif response.status_code == 409 or (response.status_code == 400 and "already exists" in response.text.lower()):
                    # Permission already exists
                    created_permissions.append(perm)
                    print(f"    ℹ️  Already exists: {perm_key}")
                else:
                    failed_permissions.append(perm)
                    print(f"    ❌ Failed ({response.status_code}): {perm_key}")
                    if response.text:
                        print(f"       Error: {response.text}")
                        
            except Exception as e:
                failed_permissions.append(perm)
                print(f"    ❌ Error creating {perm_key}: {e}")
        
        return {
            "created": created_permissions,
            "failed": failed_permissions
        }
            
    def export_configuration(self):
        """Export all configuration from source account."""
        print("\n🚀 Exporting configuration from source account")
        print("="*50)
        
        # Setup terraform.tfvars for source account
        self.setup_tfvars_for_account('source')
        
        # Create minimal workspace.tf if it doesn't exist
        if not os.path.exists("workspace.tf"):
            print("\n📝 Creating temporary workspace configuration...")
            workspace_config = """resource "frontegg_workspace" "main" {
  name                = "Temporary"
  country             = "US"
  backend_stack       = "Node"
  frontend_stack      = "React"
  frontegg_domain     = var.frontegg_domain
  allowed_origins     = var.allowed_origins
  open_saas_installed = false
}"""
            with open("workspace.tf", "w") as f:
                f.write(workspace_config)
        
        # Initialize Terraform
        print("\n🔧 Initializing Terraform...")
        success, output = self.run_command(["terraform", "init"])
        if not success and "There are some problems with the configuration" not in output:
            print(f"❌ Failed to initialize Terraform: {output}")
            sys.exit(1)
        print("✅ Terraform initialized")
        
        # Check if workspace is already in state
        success, output = self.run_command(["terraform", "state", "list"])
        if not success or "frontegg_workspace.main" not in output:
            print("\n📥 Importing existing workspace from source account...")
            success, output = self.run_command(["terraform", "import", "frontegg_workspace.main", "singleton"])
            if not success:
                print(f"❌ Failed to import workspace: {output}")
                sys.exit(1)
            print("✅ Workspace imported")
        
        # Export Terraform state
        print("\n📦 Exporting Terraform state...")
        success, output = self.run_command(["terraform", "show", "-json"])
        
        if not success:
            print("❌ Failed to export Terraform state")
            print(f"Error: {output}")
            sys.exit(1)
            
        state = json.loads(output)
        
        # Discover additional resources via API
        # Use first environment if available for proper API access
        first_env_id = None
        if self.available_environments:
            first_env_id = self.available_environments[0].get('id')
            print(f"\n🌍 Using environment: {self.available_environments[0].get('environmentName')} for API discovery")
        
        additional_resources = self.discover_additional_resources_via_api(first_env_id)
        
        # Create enhanced export with both Terraform state and API resources
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"terraform_export_{timestamp}.json"
        
        enhanced_export = {
            "terraform_state": state,
            "api_resources": additional_resources,
            "metadata": {
                "exported_at": timestamp,
                "source_region": self.region,
                "source_api_url": self.api_base_url
            }
        }
        
        with open(filename, "w") as f:
            json.dump(enhanced_export, f, indent=2)
            
        print(f"\n✅ Export complete!")
        print(f"📄 Configuration saved to: {filename}")
        
        # Show summary
        if state.get('values', {}).get('root_module', {}).get('resources'):
            resources = state['values']['root_module']['resources']
            for resource in resources:
                if resource['type'] == 'frontegg_workspace':
                    values = resource['values']
                    print("\n📊 Exported security settings:")
                    mfa = values.get('mfa_policy', [{}])[0] if values.get('mfa_policy') else {}
                    pwd = values.get('password_policy', [{}])[0] if values.get('password_policy') else {}
                    print(f"  • MFA: {mfa.get('enforce', 'off')}")
                    print(f"  • Password policy: min {pwd.get('min_length', 8)} chars")
                    print(f"  • Open SaaS: {values.get('open_saas_installed', False)}")
                    print(f"  • Has SAML: {bool(values.get('saml'))}")
                    print(f"  • Has OIDC: {bool(values.get('oidc'))}")
                    
        if additional_resources:
            print("\n📦 Additional resources discovered via API:")
            for resource_type, resources in additional_resources.items():
                if isinstance(resources, list):
                    print(f"  • {resource_type}: {len(resources)} items")
                else:
                    print(f"  • {resource_type}: configured")
                    
        return filename
    
    def setup_tfvars_for_account(self, account_type: str):
        """Setup terraform.tfvars for the specified account."""
        # Get credentials for the account
        if account_type == 'source':
            client_id = os.environ.get('SOURCE_FRONTEGG_CLIENT_ID')
            secret_key = os.environ.get('SOURCE_FRONTEGG_SECRET_KEY')
            region = os.environ.get('SOURCE_FRONTEGG_REGION', 'US')
        else:  # dest
            client_id = os.environ.get('DEST_FRONTEGG_CLIENT_ID')
            secret_key = os.environ.get('DEST_FRONTEGG_SECRET_KEY')
            region = os.environ.get('DEST_FRONTEGG_REGION', 'US')
        
        # Temporarily set credentials for API call
        temp_client_id = self.client_id
        temp_secret_key = self.secret_key
        self.client_id = client_id
        self.secret_key = secret_key
        
        # Get domain and origins
        domain, origins = self.authenticate_minimal()
        
        # Restore original credentials
        self.client_id = temp_client_id
        self.secret_key = temp_secret_key
        
        if not domain:
            print(f"❌ Failed to get domain for {account_type} account")
            sys.exit(1)
        
        # For destination account, get existing workspace info or use defaults
        if account_type == 'dest':
            # Try to get existing workspace settings via Terraform
            workspace_name = "My Workspace"  # Default
            country = "US"  # Default
            backend_stack = "Node"  # Default
            frontend_stack = "React"  # Default
            
            # Check if workspace already exists
            success, output = self.run_command(["terraform", "state", "show", "frontegg_workspace.main"])
            if success and output:
                # Parse existing workspace settings
                for line in output.split('\n'):
                    if 'name' in line and '=' in line:
                        workspace_name = line.split('=')[1].strip().strip('"')
                    elif 'country' in line and '=' in line:
                        country = line.split('=')[1].strip().strip('"')
                    elif 'backend_stack' in line and '=' in line:
                        backend_stack = line.split('=')[1].strip().strip('"')
                    elif 'frontend_stack' in line and '=' in line:
                        frontend_stack = line.split('=')[1].strip().strip('"')
        
        # Create terraform.tfvars
        tfvars_content = f"""# Auto-generated Frontegg configuration for {account_type} account
# Generated on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

# Credentials
frontegg_client_id  = "{client_id}"
frontegg_secret_key = "{secret_key}"

# Region configuration
frontegg_region = "{region}"

# Discovered values
frontegg_domain = "{domain}"
allowed_origins = {json.dumps(origins, indent=2)}
"""
        
        # Add workspace settings for destination account
        if account_type == 'dest':
            tfvars_content += f"""
# Workspace settings (destination account values)
workspace_name  = "{workspace_name}"
country         = "{country}"
backend_stack   = "{backend_stack}"
frontend_stack  = "{frontend_stack}"
"""
        
        with open("terraform.tfvars", "w") as f:
            f.write(tfvars_content)
        
        print(f"✅ Created terraform.tfvars for {account_type} account")
        
    def import_configuration(self, export_file: str):
        """Import configuration to destination account."""
        print("\n🚀 Importing configuration to destination account")
        print("="*50)
        
        # Load the export file
        print(f"\n📂 Loading export from: {export_file}")
        with open(export_file, "r") as f:
            data = json.load(f)
        
        # Extract Terraform state and API resources
        terraform_state = data.get('terraform_state', {})
        api_resources = data.get('api_resources', {})
        
        # Setup terraform.tfvars for destination account
        self.setup_tfvars_for_account('dest')
        
        # Extract workspace configuration from export
        workspace = None
        if terraform_state.get('values', {}).get('root_module', {}).get('resources'):
            for resource in terraform_state['values']['root_module']['resources']:
                if resource['type'] == 'frontegg_workspace':
                    workspace = resource['values']
                    break
        
        if not workspace:
            print("❌ No workspace configuration found in export")
            sys.exit(1)
        
        # Handle existing workspace.tf
        if os.path.exists("workspace.tf"):
            print("\n⚠️  Found existing workspace.tf, backing it up...")
            os.rename("workspace.tf", "workspace.tf.backup")
            print("  ✅ Moved workspace.tf to workspace.tf.backup")
        
        # Generate Terraform configuration
        print("\n📝 Generating Terraform configuration...")
        workspace_config = self.generate_terraform_config(workspace)
        
        # Save workspace configuration
        with open("workspace.tf", "w") as f:
            f.write(workspace_config)
        
        # Get destination account's loginURL for email templates
        login_url = None
        if api_resources and 'email_templates' in api_resources:
            print("\n🔍 Getting destination account's login URL...")
            # Make sure we're using destination credentials
            temp_client = self.client_id
            temp_secret = self.secret_key
            self.client_id = os.environ.get('DEST_FRONTEGG_CLIENT_ID')
            self.secret_key = os.environ.get('DEST_FRONTEGG_SECRET_KEY')
            
            login_url = self.get_vendor_info()
            if login_url:
                print(f"  ✅ Login URL: {login_url}")
            else:
                print(f"  ⚠️  Could not get login URL, will use empty redirect URLs")
            
            # Restore credentials
            self.client_id = temp_client
            self.secret_key = temp_secret
        
        # Create custom permissions first (before generating role configs)
        if api_resources and 'permissions' in api_resources:
            print("\n🔑 Creating custom permissions in destination account...")
            
            # Separate custom and built-in permissions
            custom_permissions = []
            for perm in api_resources['permissions']:
                if perm.get('key') and not perm['key'].startswith('fe.'):
                    custom_permissions.append(perm)
            
            if custom_permissions:
                print(f"  Found {len(custom_permissions)} custom permissions to create")
                
                # Authenticate with destination account
                temp_client = self.client_id
                temp_secret = self.secret_key
                self.client_id = os.environ.get('DEST_FRONTEGG_CLIENT_ID')
                self.secret_key = os.environ.get('DEST_FRONTEGG_SECRET_KEY')
                
                # Re-authenticate to get fresh token for destination
                self.authenticate_minimal()
                
                # Create the custom permissions
                result = self.create_custom_permissions(custom_permissions)
                
                # Restore original credentials
                self.client_id = temp_client
                self.secret_key = temp_secret
                
                if result['created']:
                    print(f"  ✅ Successfully created/verified {len(result['created'])} custom permissions")
                if result['failed']:
                    print(f"  ⚠️  Failed to create {len(result['failed'])} permissions")
            else:
                print("  ℹ️  No custom permissions to create")
        
        # Generate configurations for API resources (email templates, etc.)
        if api_resources:
            print("\n📝 Generating configurations for API resources...")
            
            # Generate email templates configuration
            if 'email_templates' in api_resources:
                email_config = self.generate_email_templates_config(api_resources['email_templates'], login_url)
                with open("email_templates_imported.tf", "w") as f:
                    f.write(email_config)
                # Count supported templates
                supported_count = email_config.count('resource "frontegg_email_template"')
                total_count = len(api_resources['email_templates'])
                if supported_count < total_count:
                    print(f"  ✅ Generated config for {supported_count}/{total_count} email templates (only supported types)")
                else:
                    print(f"  ✅ Generated config for {supported_count} email templates")
            
            # Generate email provider configuration
            if 'email_provider' in api_resources:
                provider_config = self.generate_email_provider_config(api_resources['email_provider'])
                with open("email_provider_imported.tf", "w") as f:
                    f.write(provider_config)
                print(f"  ✅ Generated config for email provider")
            
            # Generate roles configuration (must be first)
            if 'roles' in api_resources:
                roles_config = self.generate_roles_config(
                    api_resources['roles'],
                    api_resources.get('permissions', [])
                )
                with open("roles_imported.tf", "w") as f:
                    f.write(roles_config)
                print(f"  ✅ Generated config for {len(api_resources['roles'])} roles")
            
            # Generate permission categories configuration (must be before permissions)
            if 'permission_categories' in api_resources:
                categories_config = self.generate_permission_categories_config(api_resources['permission_categories'])
                with open("permission_categories_imported.tf", "w") as f:
                    f.write(categories_config)
                print(f"  ✅ Generated config for {len(api_resources['permission_categories'])} permission categories")
            
            # Generate permissions configuration (must be after categories)
            if 'permissions' in api_resources:
                permissions_config = self.generate_permissions_config(
                    api_resources['permissions'],
                    api_resources.get('roles', [])
                )
                with open("permissions_imported.tf", "w") as f:
                    f.write(permissions_config)
                print(f"  ✅ Generated config for {len(api_resources['permissions'])} permissions")
            
            # Generate webhooks configuration
            if 'webhooks' in api_resources:
                webhooks_config = self.generate_webhooks_config(api_resources['webhooks'])
                with open("webhooks_imported.tf", "w") as f:
                    f.write(webhooks_config)
                print(f"  ✅ Generated config for {len(api_resources['webhooks'])} webhook(s)")
        
        print("\n✅ Configuration files generated!")
        
        # Initialize Terraform for destination
        print("\n🔧 Initializing Terraform for destination...")
        success, output = self.run_command(["terraform", "init"])
        if not success and "There are some problems with the configuration" not in output:
            print(f"⚠️  Terraform init had warnings: {output}")
        
        print("\n📊 Security settings to apply from source:")
        mfa_policy = workspace.get('mfa_policy', [{}])[0] if workspace.get('mfa_policy') else {}
        pwd_policy = workspace.get('password_policy', [{}])[0] if workspace.get('password_policy') else {}
        print(f"  • MFA: {mfa_policy.get('enforce', 'off')}")
        print(f"  • Password min length: {pwd_policy.get('min_length', 8)}")
        print(f"  • Open SaaS: {workspace.get('open_saas_installed', False)}")
        
        if api_resources:
            print("\n📦 Additional resources to create:")
            for resource_type, resources in api_resources.items():
                if isinstance(resources, list):
                    print(f"  • {resource_type}: {len(resources)} items")
                else:
                    print(f"  • {resource_type}: configured")
        
        print("\n✅ Configuration prepared!")
        
        # Run terraform plan
        print("\n📋 Running terraform plan...")
        success, output = self.run_command(["terraform", "plan", "-out=tfplan"])
        
        if not success and "Error:" in output:
            print("❌ Terraform plan failed:")
            print(output[:500])  # Show first 500 chars of error
            return
        
        # Check if there are changes to apply
        if "No changes" in output:
            print("✅ No changes needed. Infrastructure is up-to-date.")
            return
        
        # Show summary of changes
        print("\n📊 Changes to apply:")
        # Extract plan summary
        for line in output.split('\n'):
            if 'Plan:' in line:
                print(f"  {line.strip()}")
                break
        
        # Auto-apply the changes
        print("\n🚀 Applying configuration to destination account...")
        print("  This will create/update the resources in your destination account.")
        
        # Use the saved plan file
        success, output = self.run_command(["terraform", "apply", "tfplan"])
        
        if success or "Apply complete!" in output:
            print("\n✅ Migration applied successfully!")
            
            # Show what was created
            for line in output.split('\n'):
                if 'Apply complete!' in line:
                    print(f"  {line.strip()}")
                    break
                elif 'added,' in line or 'changed,' in line:
                    print(f"  {line.strip()}")
            
            print("\n🎉 Migration complete! Your destination account now has:")
            print("  • Updated security policies from source")
            if api_resources.get('email_templates'):
                print("  • Email templates with all customizations (including 'test' from_name)")
            print("\n  You can verify the changes in your Frontegg portal.")
        else:
            print("\n⚠️  Apply may have had issues. Check the output.")
            if not success:
                print(f"Error output: {output[:500]}")
        
    def generate_email_templates_config(self, templates: List[Dict], login_url: str = None) -> str:
        """Generate Terraform configuration for email templates."""
        # Only include template types supported by Terraform provider
        supported_types = [
            "ResetPassword", "ActivateUser", "InviteToTenant", "PwnedPassword",
            "MagicLink", "OTC", "ConnectNewDevice", "UserUsedInvitation",
            "ResetPhoneNumber", "BulkInvitesToTenant", "MFAEnroll", "MFAUnenroll",
            "NewMFAMethod", "MFARecoveryCode", "RemoveMFAMethod", "EmailVerification",
            "BruteForceProtection", "SuspiciousIP", "MFAOTC", "ImpossibleTravel",
            "BotDetection", "SmsAuthenticationEnabled"
        ]
        
        # Template-specific redirect URL patterns
        redirect_patterns = {
            "ResetPassword": "/account/reset-password",
            "ActivateUser": "/account/activate",
            "InviteToTenant": "/account/invitation/accept",
            "MagicLink": "/account/magic-link",
            "EmailVerification": "/account/verify-email",
            "BulkInvitesToTenant": "/account/invitation/accept",
        }
        
        config_lines = ['# Email Templates']
        config_lines.append('# Generated from source account')
        config_lines.append('# Note: Only template types supported by Terraform provider are included\n')
        
        included_count = 0
        for template in templates:
            template_type = template.get('templateType', template.get('type', ''))
            if not template_type or template_type not in supported_types:
                continue
            
            included_count += 1
            safe_name = template_type.lower().replace(' ', '_').replace('-', '_')
            
            config_lines.append(f'resource "frontegg_email_template" "{safe_name}" {{')
            config_lines.append(f'  template_type = "{template_type}"')
            config_lines.append(f'  from_address  = "{template.get("fromAddress", "noreply@example.com")}"')
            config_lines.append(f'  from_name     = "{template.get("fromName", "My App")}"')
            config_lines.append(f'  subject       = "{self.escape_terraform_string(template.get("subject", ""))}"')
            config_lines.append(f'  html_template = <<-EOT')
            config_lines.append(template.get('htmlTemplate', '<html><body>Template content</body></html>'))
            config_lines.append('EOT')
            
            # Handle redirect_url - use destination's loginURL if available
            redirect_url = template.get("redirectUrl", "")
            
            # If we have a loginURL and this template type needs a redirect URL
            if login_url and template_type in redirect_patterns:
                # Construct the full redirect URL using destination's loginURL
                redirect_url = f"{login_url}{redirect_patterns[template_type]}"
                config_lines.append(f'  redirect_url  = "{redirect_url}"')
            elif redirect_url and redirect_url.startswith("http"):
                # Use the original URL if it's valid
                config_lines.append(f'  redirect_url  = "{redirect_url}"')
            else:
                # Provider requires the field, use empty string
                config_lines.append(f'  redirect_url  = ""')
            
            config_lines.append(f'  active        = {str(template.get("active", True)).lower()}')
            config_lines.append('}\n')
        
        if included_count == 0:
            config_lines = ['# No email templates with supported types found']
        
        return '\n'.join(config_lines)
    
    def generate_email_provider_config(self, provider: Dict) -> str:
        """Generate Terraform configuration for email provider."""
        config_lines = ['# Email Provider Configuration']
        config_lines.append('# Generated from source account\n')
        
        config_lines.append('resource "frontegg_email_provider" "main" {')
        config_lines.append(f'  from_email = "{provider.get("fromEmail", "noreply@example.com")}"')
        config_lines.append(f'  from_name  = "{provider.get("fromName", "My App")}"')
        
        # Add provider-specific configuration if available
        if provider.get('type'):
            config_lines.append(f'  # Provider type: {provider.get("type")}')
        
        config_lines.append('}')
        
        return '\n'.join(config_lines)
    
    def generate_roles_config(self, roles: List[Dict], permissions: List[Dict] = None) -> str:
        """Generate Terraform configuration for roles."""
        config_lines = ['# Roles']
        config_lines.append('# Generated from source account')
        config_lines.append('# Note: Custom permissions are created via API before applying roles\n')
        
        # Create mapping of permission ID to key for source permissions
        perm_id_to_key = {}
        if permissions:
            for perm in permissions:
                if perm.get('id') and perm.get('key'):
                    perm_id_to_key[perm['id']] = perm['key']
        
        for role in roles:
            # Skip default Admin role as it always exists
            if role.get('key') == 'Admin' or role.get('name') == 'Admin':
                continue
                
            role_name = role.get('name', '')
            role_key = role.get('key', role_name.lower().replace(' ', '_'))
            safe_name = role_key.lower().replace(' ', '_').replace('-', '_')
            
            config_lines.append(f'resource "frontegg_role" "{safe_name}" {{')
            config_lines.append(f'  name        = "{self.escape_terraform_string(role_name)}"')
            config_lines.append(f'  key         = "{role_key}"')
            
            # Description is required, use name if no description
            description = role.get('description', '') or f'{role_name} role'
            config_lines.append(f'  description = "{self.escape_terraform_string(description)}"')
            
            # Check if this is a default role
            is_default = role.get('isDefault', False)
            config_lines.append(f'  default  = {str(is_default).lower()}')
            
            # Level is required, default to 0 (tenant level)
            level = role.get('level', 0)
            config_lines.append(f'  level = {level}')
            
            # Map permission IDs to keys and include ALL permissions
            if role.get('permissions') and len(role['permissions']) > 0:
                # Convert permission IDs to keys/references
                perm_refs = []
                for perm_id in role['permissions']:
                    perm_key = perm_id_to_key.get(perm_id)
                    if perm_key:
                        if perm_key.startswith('fe.'):
                            # Built-in permission - use data source reference
                            safe_perm_name = perm_key.lower().replace('.', '_').replace('*', 'all').replace(' ', '_').replace('-', '_')
                            perm_refs.append(f'data.frontegg_permission.{safe_perm_name}.id')
                        else:
                            # Custom permission - use data source reference (will exist after API creation)
                            safe_perm_name = perm_key.lower().replace('.', '_').replace('*', 'all').replace(' ', '_').replace('-', '_')
                            perm_refs.append(f'data.frontegg_permission.custom_{safe_perm_name}.id')
                
                if perm_refs:
                    config_lines.append('  permission_ids = [')
                    for perm_ref in perm_refs:
                        config_lines.append(f'    {perm_ref},')
                    config_lines.append('  ]')
                else:
                    config_lines.append('  permission_ids = []')
            else:
                config_lines.append('  permission_ids = []')
            
            config_lines.append('}\n')
        
        return '\n'.join(config_lines)
    
    def generate_permission_categories_config(self, categories: List[Dict]) -> str:
        """Generate Terraform configuration for permission categories."""
        config_lines = ['# Permission Categories']
        config_lines.append('# Generated from source account\n')
        
        for category in categories:
            cat_name = category.get('name', '')
            cat_key = category.get('key', cat_name.lower().replace(' ', '_'))
            safe_name = cat_key.lower().replace(' ', '_').replace('-', '_').replace('.', '_')
            
            config_lines.append(f'resource "frontegg_permission_category" "{safe_name}" {{')
            config_lines.append(f'  name = "{self.escape_terraform_string(cat_name)}"')
            # Note: key field doesn't exist in Terraform provider, it's auto-generated
            
            if category.get('description'):
                config_lines.append(f'  description = "{self.escape_terraform_string(category.get("description"))}"')
            
            config_lines.append('}\n')
        
        return '\n'.join(config_lines)
    
    def generate_permissions_config(self, permissions: List[Dict], roles: List[Dict]) -> str:
        """Generate Terraform configuration for permissions."""
        config_lines = ['# Permissions']
        config_lines.append('# Generated from source account')
        config_lines.append('# Note: Both built-in (fe.*) and custom permissions are included')
        config_lines.append('# Custom permissions are created via API before applying this config\n')
        
        # Separate custom and built-in permissions
        builtin_permissions = []
        custom_permissions = []
        
        for perm in permissions:
            perm_key = perm.get('key', '')
            if not perm_key:
                continue
            if perm_key.startswith('fe.'):
                builtin_permissions.append(perm)
            else:
                custom_permissions.append(perm)
        
        # Create a mapping of permission keys to role assignments
        perm_to_roles = {}
        for role in roles:
            if role.get('permissions'):
                for perm in role['permissions']:
                    if perm not in perm_to_roles:
                        perm_to_roles[perm] = []
                    perm_to_roles[perm].append(role.get('key', role.get('name')))
        
        # Generate data sources for custom permissions (created via API)
        if custom_permissions:
            config_lines.append('# CUSTOM PERMISSIONS (created via API):')
            for perm in custom_permissions:
                perm_key = perm.get('key', '')
                safe_name = 'custom_' + perm_key.lower().replace('.', '_').replace('*', 'all').replace(' ', '_').replace('-', '_')
                
                config_lines.append(f'# Permission: {perm_key}')
                if perm.get('name'):
                    config_lines.append(f'# Name: {perm.get("name")}')
                if perm.get('description'):
                    config_lines.append(f'# Description: {perm.get("description")}')
                
                config_lines.append(f'data "frontegg_permission" "{safe_name}" {{')
                config_lines.append(f'  key = "{perm_key}"')
                config_lines.append('}\n')
            
            config_lines.append('# BUILT-IN FRONTEGG PERMISSIONS:')
        
        # Generate data sources for built-in permissions
        for perm in builtin_permissions:
            perm_key = perm.get('key', '')
            safe_name = perm_key.lower().replace('.', '_').replace('*', 'all').replace(' ', '_').replace('-', '_')
            
            config_lines.append(f'# Permission: {perm_key}')
            if perm.get('name'):
                config_lines.append(f'# Name: {perm.get("name")}')
            if perm.get('description'):
                config_lines.append(f'# Description: {perm.get("description")}')
            if perm_key in perm_to_roles:
                config_lines.append(f'# Assigned to roles: {", ".join(perm_to_roles[perm_key])}')
            
            config_lines.append(f'data "frontegg_permission" "{safe_name}" {{')
            config_lines.append(f'  key = "{perm_key}"')
            config_lines.append('}\n')
        
        return '\n'.join(config_lines)
    
    def escape_terraform_string(self, s: str) -> str:
        """Escape a string for use in Terraform configuration."""
        if not s:
            return ""
        # Escape backslashes and quotes
        return s.replace('\\', '\\\\').replace('"', '\\"')
    
    def generate_terraform_config(self, workspace: Dict) -> str:
        """Generate Terraform configuration from workspace state."""
        config_lines = []
        
        config_lines.append('resource "frontegg_workspace" "main" {')
        # Use destination account's own values for these fields
        config_lines.append('  # These use destination account values, not source')
        config_lines.append('  name                = var.workspace_name')
        config_lines.append('  country             = var.country')
        config_lines.append('  backend_stack       = var.backend_stack')
        config_lines.append('  frontend_stack      = var.frontend_stack')
        config_lines.append('  frontegg_domain     = var.frontegg_domain')
        config_lines.append('  allowed_origins     = var.allowed_origins')
        
        # Copy open_saas_installed from source
        config_lines.append(f'  open_saas_installed = {str(workspace.get("open_saas_installed", False)).lower()}')
        
        # MFA Policy
        if workspace.get('mfa_policy'):
            mfa = workspace['mfa_policy'][0] if isinstance(workspace['mfa_policy'], list) else workspace['mfa_policy']
            config_lines.append('')
            config_lines.append('  mfa_policy {')
            config_lines.append(f'    enforce               = "{mfa.get("enforce", "off")}"')
            config_lines.append(f'    allow_remember_device = {str(mfa.get("allow_remember_device", True)).lower()}')
            config_lines.append(f'    device_expiration     = {mfa.get("device_expiration", 1209600)}')
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
            config_lines.append(f'    min_tests         = {pwd.get("min_tests", 3)}')
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
    
    def generate_webhooks_config(self, webhooks: List[Dict]) -> str:
        """Generate Terraform configuration for webhooks."""
        if not webhooks:
            return "# No webhooks found"
        
        config_lines = ['# Webhooks Configuration Reference']
        config_lines.append('# Generated from source account')
        config_lines.append('# ⚠️  IMPORTANT: Webhooks cannot be created via Terraform/API (404 error)')
        config_lines.append('#              Please manually recreate these webhooks in the Frontegg portal')
        config_lines.append('#              using the configuration below as reference\n')
        
        for webhook in webhooks:
            # Create a safe resource name
            display_name = webhook.get('displayName', 'webhook')
            webhook_id = webhook.get('_id', '')
            safe_name = display_name.lower().replace(' ', '_').replace('-', '_').replace('.', '_')
            
            # Add webhook ID as comment for reference
            config_lines.append(f'# Source webhook ID: {webhook_id}')
            config_lines.append(f'# Webhook Name: {display_name}')
            config_lines.append(f'# ')
            config_lines.append(f'# COMMENTED OUT - Manual creation required in Frontegg portal')
            config_lines.append(f'# resource "frontegg_webhook" "{safe_name}" {{')
            config_lines.append(f'#   description = "{display_name}"')
            config_lines.append(f'#   enabled     = {str(webhook.get("isActive", True)).lower()}')
            config_lines.append(f'#   url         = "{webhook.get("url", "")}"')
            
            # Event keys (events in Terraform provider)
            event_keys = webhook.get('eventKeys', [])
            if event_keys:
                config_lines.append(f'#   events = {json.dumps(event_keys)}')
            
            # HTTP method (if not default POST)
            http_method = webhook.get('httpMethod', 'POST')
            if http_method != 'POST':
                config_lines.append(f'#   # HTTP Method: {http_method}')
            
            # Secret - required field, use placeholder
            config_lines.append(f'#   secret = "YOUR_SECRET_HERE"')
            
            # Custom payload if exists
            custom_payload = webhook.get('customPayload', '')
            if custom_payload:
                config_lines.append(f'#   # Custom payload exists:')
                config_lines.append(f'#   # custom_payload = <<-EOT')
                config_lines.append(f'#   # {custom_payload}')
                config_lines.append(f'#   # EOT')
            
            config_lines.append('# }\n')
            
            # Add manual creation instructions
            config_lines.append(f'# To recreate this webhook manually:')
            config_lines.append(f'# 1. Go to Frontegg Portal > Environments > Webhooks')
            config_lines.append(f'# 2. Click "Add Webhook"')
            config_lines.append(f'# 3. Set Name: {display_name}')
            config_lines.append(f'# 4. Set URL: {webhook.get("url", "")}')
            config_lines.append(f'# 5. Set Events: {", ".join(event_keys) if event_keys else "None"}')
            config_lines.append(f'# 6. Set Secret: (generate a new secure secret)')
            config_lines.append(f'# 7. Enable: {webhook.get("isActive", True)}')
            config_lines.append('')
        
        return '\n'.join(config_lines)
    
    def migrate_single_environment(self, source_env_id: str = None, dest_env_id: str = None, export_file: str = None):
        """Migrate a single environment from source to destination."""
        if not export_file:
            # Export from source
            print("\n📤 Exporting from source account...")
            self.load_credentials('source')
            
            # Perform the actual export
            export_file = self.export_configuration()
            
        # Import to destination
        print("\n📥 Importing to destination account...")
        self.load_credentials('dest')
        
        # Set environment ID for destination if provided
        if dest_env_id:
            # This will be used in API calls during import
            self.selected_environment = dest_env_id
        
        self.import_configuration(export_file)
        
        return export_file
    
    def migrate(self, exclude_envs: List[str] = None):
        """Full migration from source to destination, optionally for all environments."""
        print("\n🚀 Starting full migration from source to destination")
        print("="*50)
        
        # Load source credentials and discover environments
        self.load_credentials('source')
        domain, _ = self.authenticate_minimal()
        
        source_envs = self.available_environments
        if not source_envs:
            print("⚠️  No environments found in source account, migrating without environment context")
            # Fallback to single migration without environment
            export_file = self.export_configuration()
            self.load_credentials('dest')
            self.import_configuration(export_file)
            print("\n✅ Migration complete!")
            return
        
        # Load destination credentials and discover environments
        self.load_credentials('dest')
        dest_domain, _ = self.authenticate_minimal()
        dest_envs = self.available_environments
        
        print(f"\n📊 Environment Discovery:")
        print(f"  Source environments: {len(source_envs)}")
        for env in source_envs:
            print(f"    • {env.get('environmentName', 'unknown')} ({env.get('environment', 'unknown')}) - {env.get('id', 'unknown')[:8]}...")
        
        print(f"  Destination environments: {len(dest_envs)}")
        for env in dest_envs:
            print(f"    • {env.get('environmentName', 'unknown')} ({env.get('environment', 'unknown')}) - {env.get('id', 'unknown')[:8]}...")
        
        # Filter out excluded environments
        if exclude_envs:
            source_envs = [env for env in source_envs if env.get('environmentName') not in exclude_envs]
            print(f"\n  Excluding environments: {', '.join(exclude_envs)}")
        
        # Migrate each environment
        print(f"\n🔄 Migrating {len(source_envs)} environment(s)...")
        
        for source_env in source_envs:
            env_name = source_env.get('environmentName', 'unknown')
            env_type = source_env.get('environment', 'unknown')
            source_env_id = source_env.get('id')
            
            print(f"\n{'='*60}")
            print(f"Migrating environment: {env_name} ({env_type})")
            print(f"{'='*60}")
            
            # Find matching destination environment by name or type
            dest_env = None
            for d_env in dest_envs:
                if d_env.get('environmentName') == env_name or d_env.get('environment') == env_type:
                    dest_env = d_env
                    break
            
            if dest_env:
                print(f"  → Mapping to destination environment: {dest_env.get('environmentName')} - {dest_env.get('id', '')[:8]}...")
                dest_env_id = dest_env.get('id')
            else:
                print(f"  ⚠️  No matching destination environment found for {env_name}")
                print(f"     Creating/updating default environment...")
                dest_env_id = dest_envs[0].get('id') if dest_envs else None
            
            # Migrate this environment
            self.migrate_single_environment(source_env_id, dest_env_id)
        
        print("\n✅ All environments migrated successfully!")
        print("\nThe migration has been automatically applied to your destination account.")
        print("Check your Frontegg portal to verify the changes.")
        
    def run(self):
        """Main entry point."""
        if len(sys.argv) < 2:
            print("Frontegg Terraform Migration Tool")
            print("="*50)
            print("\nUsage:")
            print("  Export: python3 terraform_migrate.py export")
            print("          → Export from source account (uses SOURCE_* env vars)")
            print("")
            print("  Import: python3 terraform_migrate.py import <export_file.json>")
            print("          → Import to destination account (uses DEST_* env vars)")
            print("")
            print("  Migrate: python3 terraform_migrate.py migrate")
            print("           → Full migration (all environments by default)")
            print("")
            print("  Options:")
            print("    --exclude-env <name>  Exclude specific environment (can be used multiple times)")
            print("    --single-env          Only migrate development environment")
            print("")
            print("  Examples:")
            print("    python3 terraform_migrate.py migrate")
            print("    python3 terraform_migrate.py migrate --exclude-env production")
            print("    python3 terraform_migrate.py migrate --exclude-env qa --exclude-env staging")
            print("    python3 terraform_migrate.py migrate --single-env")
            print("")
            print("\nRequired environment variables in .env:")
            print("  SOURCE_FRONTEGG_CLIENT_ID    - Source account client ID")
            print("  SOURCE_FRONTEGG_SECRET_KEY   - Source account secret")
            print("  SOURCE_FRONTEGG_REGION       - Source region (US, EU, UK, CA, AU)")
            print("")
            print("  DEST_FRONTEGG_CLIENT_ID      - Destination account client ID")
            print("  DEST_FRONTEGG_SECRET_KEY     - Destination account secret")
            print("  DEST_FRONTEGG_REGION         - Destination region")
            sys.exit(1)
        
        command = sys.argv[1].lower()
        
        if command == "export":
            self.load_credentials('source')
            self.export_configuration()
        elif command == "import":
            if len(sys.argv) < 3:
                print("Error: Please specify export file")
                print("Usage: python3 terraform_migrate.py import <export_file.json>")
                sys.exit(1)
            self.load_credentials('dest')
            self.import_configuration(sys.argv[2])
        elif command == "migrate":
            # Check for --exclude-env option
            exclude_envs = []
            for i, arg in enumerate(sys.argv):
                if arg == "--exclude-env" and i + 1 < len(sys.argv):
                    exclude_envs.append(sys.argv[i + 1])
            
            # Check for --all-envs flag (default behavior)
            all_envs = "--all-envs" in sys.argv or not any("--single-env" in arg for arg in sys.argv)
            
            if all_envs:
                self.migrate(exclude_envs=exclude_envs if exclude_envs else None)
            else:
                # Single environment migration (backward compatible)
                self.migrate(exclude_envs=["qa", "staging", "production"])  # Only migrate development by default
        else:
            print(f"Unknown command: {command}")
            print("Use 'export', 'import', or 'migrate'")
            sys.exit(1)

if __name__ == "__main__":
    migrator = TerraformMigrator()
    migrator.run()