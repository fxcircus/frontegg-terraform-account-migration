# Frontegg Terraform Migration Tool

**ONE SCRIPT** to manage all Frontegg settings using Terraform with minimal API calls.

## 🎯 What This Does

- **Gets ALL Frontegg workspace settings** using Terraform (not APIs)
- **Only 1 API call** for `frontegg_domain` and `allowed_origins`
- **Exports complete configuration** to JSON
- **Imports to another account** for migration

## 🚀 Quick Start

### Prerequisites

- Python 3.6+
- Terraform >= 1.0.3
- Frontegg API credentials

### Step 1: Setup Credentials

Create `.env` file:
```bash
FRONTEGG_CLIENT_ID=your-client-id
FRONTEGG_SECRET_KEY=your-secret-key
FRONTEGG_REGION=US  # Options: EU, US, UK, CA, AU
FRONTEGG_ENVIRONMENT=development  # Optional, defaults to development
```

### Step 2: Initial Setup (First Time Only)

```bash
python3 terraform_migrate.py setup
```

This will:
1. Initialize Terraform
2. Import your existing workspace into Terraform state
3. Make 1 API call to get `frontegg_domain` and `allowed_origins`
4. Generate `workspace.tf` with complete configuration
5. Create `terraform.tfvars` with all values

### Step 3: Export Configuration

```bash
python3 terraform_migrate.py export
```

Creates `terraform_export_[timestamp].json` with ALL settings from Terraform state.

## 📊 What Gets Exported

Everything managed by the Terraform Frontegg provider:

### Core Settings
- Workspace name, country, backend/frontend stacks
- Frontegg domain (from API)
- Allowed origins (from API)
- Open SaaS configuration

### Security Policies
- **MFA Policy** - Enforcement, device remembering, expiration
- **Password Policy** - Length, complexity, history, passphrases
- **Lockout Policy** - Max attempts
- **CAPTCHA Policy** - Bot protection

### Authentication
- **Hosted Login** - Redirect URLs
- **SAML Configuration** - ACS URL, Entity ID, redirect
- **OIDC Configuration** - Redirect URLs
- **SSO Multi-tenant Policy**
- **MFA Authentication App** - Service name

### Additional Settings
- Custom domains
- All other workspace-level configurations

## 🔄 Migration to Another Account

After exporting from source account:

```bash
# 1. Update .env with target account credentials
vim .env

# 2. Import configuration to target account
python3 terraform_migrate.py import terraform_export_*.json

# 3. Review and apply
terraform plan
terraform apply
```

## 📁 Project Structure

```
.
├── terraform_migrate.py           # THE SINGLE SCRIPT for export/import
├── clean.py                      # Clean sensitive data (safe for GitHub)
├── .env.example                  # Template for credentials
├── .env                          # Your credentials (git-ignored)
├── .gitignore                    # Prevents committing sensitive files
│
├── provider.tf                   # Terraform provider configuration
├── variables.tf                  # Variable definitions
│
└── Generated files (auto-created, git-ignored):
    ├── workspace.tf              # Generated Terraform configuration
    ├── terraform.tfvars          # Generated variable values
    ├── terraform.tfstate         # Terraform state (contains all settings)
    └── terraform_export_*.json  # Exported configurations
```

## 🧹 Clean Environment (For GitHub)

Before committing to GitHub, run:

```bash
python3 clean.py
```

This removes all sensitive data and account-specific files, making the repository safe to share.

## 🛠️ How It Works

1. **Terraform manages everything** - The Frontegg provider handles the workspace
2. **Minimal API usage** - Only calls API once for domain/origins (not available in state)
3. **State contains all settings** - Terraform state has complete configuration
4. **Simple export/import** - JSON file contains everything needed

## ⚠️ Important Notes

- **Never commit `.env`** to version control
- **Workspace domain** is account-specific (managed by Frontegg)
- **First run `setup`** before export/import
- Test migrations in development first

## 🌍 Multi-Region Support

Set region in `.env`:
```
FRONTEGG_REGION=US  # EU, US, UK, CA, AU
```

## 🔧 Troubleshooting

### If workspace not imported
```bash
python3 terraform_migrate.py setup
```

### Check what's in state
```bash
terraform show
```

### Verify credentials
```bash
cat .env | grep FRONTEGG
```

## 📚 Documentation

- [Frontegg Terraform Provider](https://registry.terraform.io/providers/frontegg/frontegg)
- [Frontegg Documentation](https://docs.frontegg.com)