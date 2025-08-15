# Frontegg Terraform Migration Tool

A powerful tool to migrate Frontegg configurations between accounts using Terraform and API discovery.

## 🚀 Features

- One command migrates everything
- **Multi-environment support** - Automatically discovers and migrates all environments
- Automatic workspace import and configuration
- Smart redirect URL handling
- Preserves destination-specific settings

## ✨ What Gets Migrated

### ✅ **Fully Migrated** (Working Now)

#### Security & Authentication Settings
- **MFA Policies** - Enforcement mode, device remembering, expiration
- **MFA Authentication App** - Service name configuration  
- **Password Policies** - Min/max length, complexity, passphrases, history
- **Lockout Policies** - Maximum login attempts
- **Hosted Login** - Allowed redirect URLs
- **SAML Configuration** - ACS URL, SP Entity ID, redirect URL
- **OIDC Configuration** - Redirect URLs
- **Open SaaS Settings** - Installation status

#### Email Configuration  
- **Email Templates** (22 supported types)
  - Preserves all customizations (from_name, subject, HTML content)
  - Automatically fixes redirect URLs using destination's domain
  - Includes: ResetPassword, ActivateUser, MagicLink, MFA templates, etc.

#### Authorization & Access Control
- **Roles** - Custom and default roles with permissions
  - Creates new roles in destination (new UUIDs generated)
  - Maps permissions automatically (built-in fe.* permissions only)
  - Preserves role keys, names, descriptions, and settings
- **Permission Categories** - Permission groupings and organization
  - All 21 categories migrated successfully
- **Permissions** - References to built-in Frontegg permissions
  - Built-in permissions (fe.*) are referenced correctly
  - Custom permissions must be created manually first

### ❌ **NOT Migrated** (Destination Keeps Its Own)
- **Workspace Name** - Each account maintains its own
- **Country Setting** - Preserved per account
- **Backend/Frontend Stacks** - Not changed
- **Frontegg Domain** - Unique per account
- **Allowed Origins** - Destination's CORS settings preserved
- **Custom Domains** - Account-specific

### 🚧 **Coming Soon**
- **Webhooks** - Event notifications (pending API investigation)
- **Custom Permissions** - Non-Frontegg permissions (require API/UI creation first)

## 📋 Prerequisites

- Python 3.6+
- Terraform 1.0+
- Frontegg accounts with API access
- `requests` Python package (`pip install requests`)

## 🛠️ Quick Start

### 1. Clone and Setup

```bash
git clone <your-repo>
cd terraform_claude
cp .env.example .env
```

### 2. Configure Credentials

Edit `.env` with your Frontegg credentials:

```env
# Source Account (to export from)
SOURCE_FRONTEGG_CLIENT_ID=your-source-client-id
SOURCE_FRONTEGG_SECRET_KEY=your-source-secret-key
SOURCE_FRONTEGG_REGION=US

# Destination Account (to import to)
DEST_FRONTEGG_CLIENT_ID=your-dest-client-id
DEST_FRONTEGG_SECRET_KEY=your-dest-secret-key
DEST_FRONTEGG_REGION=US
```

### 3. Run Migration

```bash
# Migrate all environments (default)
python3 terraform_migrate.py migrate

# Exclude specific environments
python3 terraform_migrate.py migrate --exclude-env production

# Exclude multiple environments
python3 terraform_migrate.py migrate --exclude-env qa --exclude-env staging

# Migrate only development environment
python3 terraform_migrate.py migrate --single-env
```

The tool will:
1. Discover all environments in source account
2. Export settings from each environment
3. Map to corresponding destination environments
4. Generate Terraform configurations
5. Apply everything automatically

## 🎯 Usage Options

### Full Migration (Recommended)
```bash
python3 terraform_migrate.py migrate
```

### Step-by-Step Migration

**Export from source:**
```bash
python3 terraform_migrate.py export
# Creates: terraform_export_TIMESTAMP.json
```

**Import to destination:**
```bash
python3 terraform_migrate.py import terraform_export_TIMESTAMP.json
# Applies configurations to destination
```

## 🔧 How It Works

### 1. Export Phase
- Authenticates with source account
- Creates temporary workspace.tf if needed
- Imports existing workspace via `terraform import`
- Exports Terraform state
- Discovers additional resources via API (email templates, etc.)
- Saves everything to timestamped JSON file

### 2. Import Phase  
- Authenticates with destination account
- Gets destination's login URL via `/vendors` API
- Generates Terraform configurations with:
  - Destination's own name, country, stacks
  - Security policies from source
  - Email templates with fixed redirect URLs
- Runs `terraform plan` automatically
- Applies changes with `terraform apply -auto-approve`

### 3. Smart Features
- **Automatic Workspace Import**: No manual `terraform import` needed
- **Redirect URL Fix**: Uses destination's login URL + path patterns
- **Template Filtering**: Only includes Terraform-supported template types
- **Validation**: Checks for errors and provides clear feedback

## 📁 Project Structure

```
.
├── terraform_migrate.py      # Main migration tool
├── utils/
│   └── clean.py             # Environment cleanup utility
├── .env                      # Your credentials (gitignored)
├── .env.example              # Template for credentials
├── .gitignore                # Protects sensitive files
├── provider.tf               # Terraform provider config
├── variables.tf              # Variable definitions
└── README.md                 # This file
```

## 🧹 Cleanup

To reset your environment:
```bash
python3 utils/clean.py -y
```

This removes all generated files while keeping your `.env` safe.

## 🐛 Troubleshooting

### Authentication Errors
- Verify credentials in `.env`
- Check region settings (US, EU, UK, CA, AU)
- Ensure API access is enabled

### Terraform Errors
- Run `terraform init` if provider errors occur
- Remove conflicting `workspace.tf` files
- Check for duplicate resource definitions

### Email Template Errors
- Some templates may fail if redirect URLs are invalid
- The tool automatically uses destination's login URL
- 22 out of 28 template types are supported by Terraform

## 🌍 Multi-Region & Multi-Environment Support

### Regions
Supports all Frontegg regions:
- `US` - United States
- `EU` - Europe
- `UK` - United Kingdom  
- `CA` - Canada
- `AU` - Australia

### Environments
Automatically discovers and migrates all environments:
- Development
- QA
- Staging  
- Production
- Custom environments

The tool maps source environments to destination by name or type automatically.

## 📊 Migration Summary

| Resource Type | Migration Status | Method |
|--------------|------------------|---------|
| MFA Policies | ✅ Full | Terraform |
| Password Policies | ✅ Full | Terraform |
| Email Templates | ✅ Full | API + Terraform |
| SAML/OIDC | ✅ Full | Terraform |
| Roles | ✅ Full | API + Terraform |
| Permission Categories | ✅ Full | API + Terraform |
| Permissions (fe.*) | ✅ Full | API + Data Sources |
| Workspace Name | ❌ Preserved | N/A |
| Domain | ❌ Preserved | N/A |
| Custom Permissions | 🚧 Manual | Requires API/UI |
| Webhooks | 🚧 Coming Soon | API Investigation |