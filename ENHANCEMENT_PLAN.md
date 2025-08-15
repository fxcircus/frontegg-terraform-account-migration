# Frontegg Terraform Full Resource Import Plan

## Current State
- ✅ Importing workspace (singleton resource)
- ✅ Getting workspace settings via Terraform
- ❌ Missing all other resources (emails, roles, webhooks, etc.)

## Goal
Import ALL Frontegg resources into Terraform state to enable complete account migration.

## Available Frontegg Terraform Resources

Based on the Frontegg Terraform provider documentation, these resources can be managed:

### 1. 🏢 Workspace Resources (Currently Implemented)
- `frontegg_workspace` - ✅ Already importing
  - Import: `terraform import frontegg_workspace.main singleton`
  - Contains: Security policies, SSO config, MFA, passwords, etc.

### 2. 📧 Email Configuration
- `frontegg_email_template` - Email templates for various events
  - Import: `terraform import frontegg_email_template.{name} {template_type}`
  - Templates: ResetPassword, ActivateUser, InviteToTenant, etc.
  - API needed: GET `/identity/resources/mail/v1/templates`

- `frontegg_email_provider` - Email service configuration
  - Import: `terraform import frontegg_email_provider.main singleton`
  - Contains: SMTP settings, SendGrid, etc.

### 3. 👥 Identity & Access Management
- `frontegg_role` - User roles
  - Import: `terraform import frontegg_role.{name} {role_id}`
  - API needed: GET `/identity/resources/roles/v2`

- `frontegg_permission` - Permissions
  - Import: `terraform import frontegg_permission.{name} {permission_id}`
  - API needed: GET `/identity/resources/permissions/v2`

- `frontegg_permission_category` - Permission groupings
  - Import: `terraform import frontegg_permission_category.{name} {category_id}`
  - API needed: GET `/identity/resources/permission-categories/v1`

### 4. 🪝 Webhooks & Events
- `frontegg_webhook` - Event webhooks
  - Import: `terraform import frontegg_webhook.{name} {webhook_id}`
  - API needed: GET `/frontegg/webhook`

- `frontegg_prehook` - Pre-authentication hooks
  - Import: `terraform import frontegg_prehook.{name} {prehook_id}`
  - API needed: GET `/frontegg/prehook`

### 5. 🔐 SSO & Social Login
- `frontegg_social_login` - OAuth providers (Google, GitHub, etc.)
  - Import: `terraform import frontegg_social_login.{provider} {provider}`
  - Providers: google, github, facebook, microsoft, apple, slack, linkedin
  - API needed: GET `/identity/resources/sso/v1/{provider}`

- `frontegg_saml_configuration` - SAML SSO
  - Import: `terraform import frontegg_saml_configuration.{name} {config_id}`
  - API needed: GET `/identity/resources/sso/v1/saml/configurations`

- `frontegg_oidc_configuration` - OIDC SSO
  - Import: `terraform import frontegg_oidc_configuration.{name} {config_id}`
  - API needed: GET `/identity/resources/sso/v1/oidc/configurations`

### 6. 🎨 Admin Portal & Branding
- Note: Admin portal settings are part of the workspace resource
  - No separate data source available for reading admin_portal
  - Settings must be configured directly in workspace resource

### 7. 📱 Applications
- `frontegg_application` - Application configurations
  - Import: `terraform import frontegg_application.{name} {app_id}`
  - API needed: GET `/identity/resources/applications/v1`

- `frontegg_redirect_uri` - OAuth redirect URIs
  - Import: `terraform import frontegg_redirect_uri.{name} {app_id}/{uri_id}`
  - API needed: GET `/identity/resources/applications/v1/{app_id}/redirect-uris`

### 8. 🏢 Tenants (Maybe?)
- `frontegg_tenant` - Tenant configurations
  - Note: Might not be importable as they're customer data
  - API needed: GET `/identity/resources/tenants/v3`

## Implementation Options

### Option 1: Selective Import (Recommended for Phase 1)
Import only the most critical configuration resources:
1. Email templates & provider
2. Roles & permissions
3. Webhooks
4. Social login configs

**Pros:**
- Covers 80% of configuration needs
- Manageable complexity
- Clear value proposition

**Cons:**
- Not complete migration
- Still need manual work for some resources

### Option 2: Complete Import (Phase 2)
Import EVERYTHING the provider supports:
- All resources listed above
- Full discovery via API
- Complete Terraform state

**Pros:**
- True "full migration"
- Everything in Terraform
- Single source of truth

**Cons:**
- Complex implementation
- Many API calls for discovery
- Some resources might fail to import

### Option 3: Hybrid Approach
1. Use Terraform for what it does best (workspace, SSO, policies)
2. Use direct API for dynamic data (users, tenants)
3. Generate Terraform configs for everything else

**Pros:**
- Best of both worlds
- Practical and achievable
- Clear separation of concerns

**Cons:**
- Two different approaches
- More complex documentation

## Proposed Implementation Plan

### Phase 1: Core Configuration (Priority)
```python
Resources to add:
1. Email templates (ResetPassword, InviteUser, etc.)
2. Email provider configuration
3. Roles and permissions
4. Webhooks
```

### Phase 2: SSO & Authentication
```python
Resources to add:
1. Social login providers (Google, GitHub, etc.)
2. SAML configurations
3. OIDC configurations
```

### Phase 3: Complete Migration
```python
Resources to add:
1. Applications and redirect URIs
2. Permission categories
3. Prehooks
4. Any remaining importable resources
```

## Technical Approach

### Discovery Process
```python
def discover_and_import_all_resources():
    # 1. Discover email templates
    templates = api_request("/identity/resources/mail/v1/templates")
    for template in templates:
        terraform_import(f"frontegg_email_template.{template.type}", template.type)
    
    # 2. Discover roles
    roles = api_request("/identity/resources/roles/v2")
    for role in roles:
        terraform_import(f"frontegg_role.{role.key}", role.id)
    
    # 3. Discover webhooks
    webhooks = api_request("/frontegg/webhook")
    for webhook in webhooks:
        terraform_import(f"frontegg_webhook.webhook_{webhook.id}", webhook.id)
    
    # ... continue for all resource types
```

### Export Process
```python
def export_all():
    # After importing all resources
    terraform_state = terraform_show_json()
    
    # State now contains:
    # - workspace (existing)
    # - email_templates (new)
    # - roles (new)
    # - webhooks (new)
    # - etc.
    
    return complete_configuration
```

## Decision Points

1. **Which resources are most important to migrate?**
   - Email templates (branding consistency)
   - Roles/permissions (access control)
   - Webhooks (integrations)
   - SSO configs (authentication)

2. **Should we import user data?**
   - Probably not (privacy, passwords)
   - Maybe just counts/statistics

3. **How to handle secrets?**
   - Mask in export
   - Require manual update in target

4. **Error handling?**
   - Some resources might not exist
   - Some might fail to import
   - Need graceful degradation

## Next Steps

Please choose which approach you'd like to implement:

1. **Quick Win**: Just add email templates and roles (most commonly needed)
2. **Phase 1**: Add email, roles, permissions, webhooks (core config)
3. **Full Implementation**: Everything the provider supports
4. **Custom Mix**: Tell me which specific resources you need

Let me know which option aligns with your needs!