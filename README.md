# Frontegg Terraform Migration Tool

A powerful tool to migrate Frontegg configurations between accounts using Terraform and API discovery.

## 🚀 Features

- **Fully Automated Migration**: One command migrates everything
- **Hybrid Approach**: Uses Terraform where possible, API for discovery
- **Smart Redirect URLs**: Automatically uses destination account's login URL
- **Zero Manual Setup**: Automatically imports workspaces and configures everything
- **Preserves Customizations**: Keeps all your custom settings and modifications

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

### ❌ **NOT Migrated** (Destination Keeps Its Own)
- **Workspace Name** - Each account maintains its own
- **Country Setting** - Preserved per account
- **Backend/Frontend Stacks** - Not changed
- **Frontegg Domain** - Unique per account
- **Allowed Origins** - Destination's CORS settings preserved
- **Custom Domains** - Account-specific

### 🚧 **Coming Soon**
- **Roles** - Custom roles and configurations
- **Permissions** - Granular permissions
- **Permission Categories** - Permission groupings
- **Webhooks** - Event notifications (pending API investigation)

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
python3 terraform_migrate.py migrate
```

That's it! The tool will:
1. Export all settings from source account
2. Import existing workspace automatically
3. Get destination's login URL for proper redirects
4. Generate Terraform configurations
5. Apply everything to destination account

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
├── clean.py                  # Environment cleanup utility
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
python3 clean.py -y
```

This removes all generated files while keeping your `.env` safe.

## 🔒 Security

- Never commit `.env` or `terraform.tfvars`
- Keep `terraform.tfstate` files secure
- Review configurations before applying
- Use `.gitignore` to prevent accidents

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

## 🌍 Multi-Region Support

Supports all Frontegg regions:
- `US` - United States
- `EU` - Europe
- `UK` - United Kingdom  
- `CA` - Canada
- `AU` - Australia

## 📊 Migration Summary

| Resource Type | Migration Status | Method |
|--------------|------------------|---------|
| MFA Policies | ✅ Full | Terraform |
| Password Policies | ✅ Full | Terraform |
| Email Templates | ✅ Full | API + Terraform |
| SAML/OIDC | ✅ Full | Terraform |
| Workspace Name | ❌ Preserved | N/A |
| Domain | ❌ Preserved | N/A |
| Roles | 🚧 Coming Soon | API + Terraform |
| Permissions | 🚧 Coming Soon | API + Terraform |

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Test your changes
4. Submit a pull request

## 📝 License

[Your License Here]

## 🙏 Acknowledgments

Built with Frontegg's Terraform Provider and API