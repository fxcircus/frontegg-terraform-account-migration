#!/usr/bin/env python3
"""
Clean/Reset Script for Frontegg Terraform Setup
This script removes all sensitive data and account-specific configurations,
making the repository safe to commit to GitHub.

Usage:
    python3 clean.py        # Interactive mode (asks for confirmation)
    python3 clean.py -y     # Force mode (no confirmation)
"""

import os
import sys
import shutil
import glob

def clean_environment():
    """Remove all sensitive and account-specific files."""
    
    files_to_remove = [
        # Terraform variables (account-specific)
        'terraform.tfvars',
        
        # Terraform state files (contain sensitive data)
        'terraform.tfstate',
        'terraform.tfstate.backup',
        '.terraform.lock.hcl',
        
        # Terraform plan files
        'tfplan',
        
        # Generated workspace configurations
        'workspace.tf',
        'workspace.tf.backup',
        'workspace_imported.tf',
        'workspace_migrated.tf',
        'workspace_temp.tf',
        
        # Generated resource configurations
        'email_templates_imported.tf',
        'permissions_imported.tf',
        'permission_categories_imported.tf',
        'roles_imported.tf',
        'webhooks_imported.tf',
        
        # Any other imported terraform files
        *glob.glob('*_imported.tf'),
        
        # Export files (contain account data)
        *glob.glob('terraform_export_*.json'),
        *glob.glob('frontegg_export_*.json'),
    ]
    
    dirs_to_remove = [
        # Terraform provider cache
        '.terraform',
        
        # Any export directories
        *glob.glob('terraform_export_*'),
    ]
    
    removed_items = []
    
    # Remove files
    for file in files_to_remove:
        if os.path.exists(file):
            os.remove(file)
            removed_items.append(f"  ✅ Removed: {file}")
    
    # Remove directories
    for dir in dirs_to_remove:
        if os.path.exists(dir):
            shutil.rmtree(dir)
            removed_items.append(f"  ✅ Removed: {dir}/")
    
    return removed_items

def create_env_example():
    """Create or update .env.example file."""
    env_example_content = """# Frontegg API Credentials
FRONTEGG_CLIENT_ID=your-client-id-here
FRONTEGG_SECRET_KEY=your-secret-key-here

# Region Configuration
# Options: EU, US, UK, CA, AU
FRONTEGG_REGION=US

# Environment Configuration (optional)
# Options: development, qa, staging, production
# Defaults to development if not specified
FRONTEGG_ENVIRONMENT=development
"""
    
    with open('.env.example', 'w') as f:
        f.write(env_example_content)
    
    return "  ✅ Created: .env.example"

def reset_provider_tf():
    """Reset provider.tf to generic template."""
    provider_content = """terraform {
  required_version = ">= 1.0.3"
  required_providers {
    frontegg = {
      source  = "frontegg/frontegg"
      version = "~> 2.0"
    }
  }
}

provider "frontegg" {
  client_id  = var.frontegg_client_id
  secret_key = var.frontegg_secret_key

  # Optional: Specify environment ID for environment-specific configuration
  environment_id = var.frontegg_environment_id != "" ? var.frontegg_environment_id : null

  # API URLs based on region
  api_base_url = lookup({
    "EU" = "https://api.frontegg.com"
    "US" = "https://api.us.frontegg.com"
    "UK" = "https://api.uk.frontegg.com"
    "CA" = "https://api.ca.frontegg.com"
    "AU" = "https://api.au.frontegg.com"
  }, var.frontegg_region, "https://api.frontegg.com")
  
  portal_base_url = lookup({
    "EU" = "https://portal.frontegg.com"
    "US" = "https://portal.us.frontegg.com"
    "UK" = "https://portal.uk.frontegg.com"
    "CA" = "https://portal.ca.frontegg.com"
    "AU" = "https://portal.au.frontegg.com"
  }, var.frontegg_region, "https://portal.frontegg.com")
}
"""
    
    with open('provider.tf', 'w') as f:
        f.write(provider_content)
    
    return "  ✅ Reset: provider.tf"

def main():
    """Main cleanup function."""
    print("🧹 Frontegg Terraform Environment Cleaner")
    print("="*50)
    print("\nThis will remove:")
    print("  • terraform.tfvars (auto-generated)")
    print("  • Terraform state files")
    print("  • Terraform plan files (tfplan)")
    print("  • Generated workspace configurations")
    print("  • Generated resource files (*_imported.tf)")
    print("  • Export files (*.json)")
    print("  • Terraform cache (.terraform/)")
    print("\nThis will keep:")
    print("  • .env (already in .gitignore)")
    print("\nThis will create/reset:")
    print("  • .env.example (template)")
    print("  • provider.tf (generic template)")
    
    # Check for -y flag
    force_mode = len(sys.argv) > 1 and sys.argv[1] == '-y'
    
    if not force_mode:
        print("\n⚠️  WARNING: This cannot be undone!")
        response = input("\nContinue? (yes/no): ")
        if response.lower() != 'yes':
            print("❌ Cleanup cancelled")
            sys.exit(0)
    
    print("\n🔄 Cleaning environment...")
    
    # Perform cleanup
    removed = clean_environment()
    
    # Create templates
    created = []
    created.append(create_env_example())
    created.append(reset_provider_tf())
    
    # Show results
    if removed:
        print("\n📝 Removed files:")
        for item in removed:
            print(item)
    else:
        print("\n📝 No files to remove (already clean)")
    
    print("\n📝 Created/Reset files:")
    for item in created:
        print(item)
    
    print("\n✅ Environment cleaned successfully!")
    print("\n📋 Next steps:")
    print("1. Copy .env.example to .env")
    print("2. Add your Frontegg credentials to .env")
    print("3. Run: python3 terraform_migrate.py setup")
    print("\n✨ Repository is now safe to commit to GitHub!")

if __name__ == "__main__":
    main()