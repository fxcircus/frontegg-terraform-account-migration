# Permissions
# Generated from source account
# Note: Only built-in Frontegg permissions (fe.*) are included
# Custom permissions must be created via API/UI first

# CUSTOM PERMISSIONS FOUND (create these manually):
#   - test123: test123

# Permission: fe.secure.delete.users
# Name: Delete users
# Description: Delete users from account
data "frontegg_permission" "fe_secure_delete_users" {
  key = "fe.secure.delete.users"
}

# Permission: fe.secure.write.usersRoles
# Name: Assign roles to users
# Description: Add roles to users
data "frontegg_permission" "fe_secure_write_usersroles" {
  key = "fe.secure.write.usersRoles"
}

# Permission: fe.secure.delete.usersRoles
# Name: Delete roles from users
# Description: Delete roles from users in account
data "frontegg_permission" "fe_secure_delete_usersroles" {
  key = "fe.secure.delete.usersRoles"
}

# Permission: fe.secure.delete.userSubTenants
# Name: Delete users from sub-accounts
# Description: Delete users from sub-accounts
data "frontegg_permission" "fe_secure_delete_usersubtenants" {
  key = "fe.secure.delete.userSubTenants"
}

# Permission: fe.secure.write.enableDisable
# Name: Write disable/enable
# Description: Disable/enable users from this account
data "frontegg_permission" "fe_secure_write_enabledisable" {
  key = "fe.secure.write.enableDisable"
}

# Permission: fe.secure.write.updateUser
# Name: Update users
# Description: Update other users
data "frontegg_permission" "fe_secure_write_updateuser" {
  key = "fe.secure.write.updateUser"
}

# Permission: fe.secure.write.tenantInvites
# Name: Create invitation
# Description: Create and edit account invitation link for signup/login
data "frontegg_permission" "fe_secure_write_tenantinvites" {
  key = "fe.secure.write.tenantInvites"
}

# Permission: fe.secure.write.userSubTenants
# Name: Invite users to sub-accounts
# Description: Invite users to sub-accounts
data "frontegg_permission" "fe_secure_write_usersubtenants" {
  key = "fe.secure.write.userSubTenants"
}

# Permission: fe.secure.read.roles
# Name: Read roles
# Description: View vendor and account roles
data "frontegg_permission" "fe_secure_read_roles" {
  key = "fe.secure.read.roles"
}

# Permission: fe.secure.write.users
# Name: Write users
# Description: Add users to account
data "frontegg_permission" "fe_secure_write_users" {
  key = "fe.secure.write.users"
}

# Permission: fe.secure.read.users
# Name: Read users
# Description: View all users in an account
data "frontegg_permission" "fe_secure_read_users" {
  key = "fe.secure.read.users"
}

# Permission: fe.secure.read.permissions
# Name: Read permissions
# Description: View permissions
data "frontegg_permission" "fe_secure_read_permissions" {
  key = "fe.secure.read.permissions"
}

# Permission: fe.secure.*
# Name: Secure general
# Description: All secure access permissions
data "frontegg_permission" "fe_secure_all" {
  key = "fe.secure.*"
}

# Permission: fe.connectivity.*
# Name: Connectivity general
# Description: All connectivity permissions
data "frontegg_permission" "fe_connectivity_all" {
  key = "fe.connectivity.*"
}

# Permission: fe.account-settings.read.app
# Name: Read application
# Description: View all applications in the account
data "frontegg_permission" "fe_account_settings_read_app" {
  key = "fe.account-settings.read.app"
}

# Permission: fe.connectivity.read.*
# Name: Connectivity read
# Description: All connectivity read permissions
data "frontegg_permission" "fe_connectivity_read_all" {
  key = "fe.connectivity.read.*"
}

# Permission: fe.secure.read.*
# Name: Secure read
# Description: All secure access read permissions
data "frontegg_permission" "fe_secure_read_all" {
  key = "fe.secure.read.*"
}

# Permission: fe.account-hierarchy.delete.subAccount
# Name: Delete sub-accounts
# Description: Delete sub-accounts
data "frontegg_permission" "fe_account_hierarchy_delete_subaccount" {
  key = "fe.account-hierarchy.delete.subAccount"
}

# Permission: fe.account-hierarchy.read.subAccount
# Name: Read sub-accounts
# Description: View sub-accounts
data "frontegg_permission" "fe_account_hierarchy_read_subaccount" {
  key = "fe.account-hierarchy.read.subAccount"
}

# Permission: fe.account-hierarchy.write.subAccount
# Name: Create or update sub-accounts
# Description: Create or update sub-accounts
data "frontegg_permission" "fe_account_hierarchy_write_subaccount" {
  key = "fe.account-hierarchy.write.subAccount"
}

# Permission: fe.account-hierarchy.write.subAccountAccess
# Name: Give access to sub-accounts
# Description: Give a user access to sub-accounts
data "frontegg_permission" "fe_account_hierarchy_write_subaccountaccess" {
  key = "fe.account-hierarchy.write.subAccountAccess"
}

# Permission: fe.account-hierarchy.write.subAccountManagement
# Name: Write sub-account management
# Description: Update sub-accounts to allow sub-account management
data "frontegg_permission" "fe_account_hierarchy_write_subaccountmanagement" {
  key = "fe.account-hierarchy.write.subAccountManagement"
}

# Permission: fe.account-settings.delete.account
# Name: Delete account
# Description: Delete my account
data "frontegg_permission" "fe_account_settings_delete_account" {
  key = "fe.account-settings.delete.account"
}

# Permission: fe.account-settings.write.custom-login-box
# Name: Edit custom login settings
# Description: Write account custom login box styling
data "frontegg_permission" "fe_account_settings_write_custom_login_box" {
  key = "fe.account-settings.write.custom-login-box"
}

# Permission: fe.connectivity.delete.*
# Name: Connectivity delete
# Description: All connectivity delete permissions
data "frontegg_permission" "fe_connectivity_delete_all" {
  key = "fe.connectivity.delete.*"
}

# Permission: fe.connectivity.delete.bellNotifications
# Name: Delete user bell notification
# Description: Delete user bell notifications
data "frontegg_permission" "fe_connectivity_delete_bellnotifications" {
  key = "fe.connectivity.delete.bellNotifications"
}

# Permission: fe.connectivity.delete.emailConfig
# Name: Delete email configurations
# Description: Delete email integration configurations
data "frontegg_permission" "fe_connectivity_delete_emailconfig" {
  key = "fe.connectivity.delete.emailConfig"
}

# Permission: fe.connectivity.delete.slackAppRegistration
# Name: Delete Slack application registrations
# Description: Delete Slack app registration
data "frontegg_permission" "fe_connectivity_delete_slackappregistration" {
  key = "fe.connectivity.delete.slackAppRegistration"
}

# Permission: fe.connectivity.delete.slackSubscriptionEvent
# Name: Delete events from Slack subscriptions
# Description: Delete events from Slack subscription
data "frontegg_permission" "fe_connectivity_delete_slacksubscriptionevent" {
  key = "fe.connectivity.delete.slackSubscriptionEvent"
}

# Permission: fe.connectivity.delete.slackSubscriptions
# Name: Delete Slack subscriptions
# Description: Delete Slack subscriptions to events
data "frontegg_permission" "fe_connectivity_delete_slacksubscriptions" {
  key = "fe.connectivity.delete.slackSubscriptions"
}

# Permission: fe.connectivity.delete.smsConfig
# Name: Delete SMS configurations
# Description: Delete SMS integration configurations
data "frontegg_permission" "fe_connectivity_delete_smsconfig" {
  key = "fe.connectivity.delete.smsConfig"
}

# Permission: fe.connectivity.delete.webhook
# Name: Delete webhooks
# Description: Delete webhook configurations
data "frontegg_permission" "fe_connectivity_delete_webhook" {
  key = "fe.connectivity.delete.webhook"
}

# Permission: fe.connectivity.read.emailConfig
# Name: Read email configuration
# Description: Read email integration configurations
data "frontegg_permission" "fe_connectivity_read_emailconfig" {
  key = "fe.connectivity.read.emailConfig"
}

# Permission: fe.connectivity.read.eventCategories
# Name: Read event categories
# Description: View connectivity event categories
data "frontegg_permission" "fe_connectivity_read_eventcategories" {
  key = "fe.connectivity.read.eventCategories"
}

# Permission: fe.connectivity.read.events
# Name: Read events
# Description: View connectivity events
data "frontegg_permission" "fe_connectivity_read_events" {
  key = "fe.connectivity.read.events"
}

# Permission: fe.connectivity.read.slackApp
# Name: Read Slack applications
# Description: Read Slack application configurations
data "frontegg_permission" "fe_connectivity_read_slackapp" {
  key = "fe.connectivity.read.slackApp"
}

# Permission: fe.connectivity.read.slackChannels
# Name: Read Slack channels
# Description: View registered Slack workspace channels
data "frontegg_permission" "fe_connectivity_read_slackchannels" {
  key = "fe.connectivity.read.slackChannels"
}

# Permission: fe.connectivity.read.slackSubscriptions
# Name: Read Slack subscriptions
# Description: View Slack event subscriptions
data "frontegg_permission" "fe_connectivity_read_slacksubscriptions" {
  key = "fe.connectivity.read.slackSubscriptions"
}

# Permission: fe.connectivity.read.slackUsers
# Name: Read Slack users
# Description: View registered Slack workspace users
data "frontegg_permission" "fe_connectivity_read_slackusers" {
  key = "fe.connectivity.read.slackUsers"
}

# Permission: fe.connectivity.read.smsConfig
# Name: Read SMS configurations
# Description: View SMS integration configurations
data "frontegg_permission" "fe_connectivity_read_smsconfig" {
  key = "fe.connectivity.read.smsConfig"
}

# Permission: fe.connectivity.read.userBellNotifications
# Name: Read bell notifications
# Description: View user bell notifications
data "frontegg_permission" "fe_connectivity_read_userbellnotifications" {
  key = "fe.connectivity.read.userBellNotifications"
}

# Permission: fe.connectivity.read.webhookLogs
# Name: Read webhook logs
# Description: View webhook logs
data "frontegg_permission" "fe_connectivity_read_webhooklogs" {
  key = "fe.connectivity.read.webhookLogs"
}

# Permission: fe.connectivity.read.webhooks
# Name: Read webhooks
# Description: View webhook configurations
data "frontegg_permission" "fe_connectivity_read_webhooks" {
  key = "fe.connectivity.read.webhooks"
}

# Permission: fe.connectivity.write.*
# Name: Connectivity write
# Description: All connectivity write permissions
data "frontegg_permission" "fe_connectivity_write_all" {
  key = "fe.connectivity.write.*"
}

# Permission: fe.connectivity.write.emailConfig
# Name: Write email configuration
# Description: Create email integration configurations
data "frontegg_permission" "fe_connectivity_write_emailconfig" {
  key = "fe.connectivity.write.emailConfig"
}

# Permission: fe.connectivity.write.sendWebpushNotification
# Name: Create webpushes
# Description: Create webpush notifications
data "frontegg_permission" "fe_connectivity_write_sendwebpushnotification" {
  key = "fe.connectivity.write.sendWebpushNotification"
}

# Permission: fe.connectivity.write.slackAppRegistration
# Name: Register Slack applications
# Description: Register Slack application
data "frontegg_permission" "fe_connectivity_write_slackappregistration" {
  key = "fe.connectivity.write.slackAppRegistration"
}

# Permission: fe.connectivity.write.slackSubscriptions
# Name: Create Slack subscriptions
# Description: Create Slack subscriptions to events
data "frontegg_permission" "fe_connectivity_write_slacksubscriptions" {
  key = "fe.connectivity.write.slackSubscriptions"
}

# Permission: fe.connectivity.write.smsConfig
# Name: Write SMS configurations
# Description: Create SMS integration configurations
data "frontegg_permission" "fe_connectivity_write_smsconfig" {
  key = "fe.connectivity.write.smsConfig"
}

# Permission: fe.connectivity.write.subscribeWebpush
# Name: Subscribe to webpushes
# Description: Subscribe to webpush notifications
data "frontegg_permission" "fe_connectivity_write_subscribewebpush" {
  key = "fe.connectivity.write.subscribeWebpush"
}

# Permission: fe.connectivity.write.triggerEvent
# Name: Trigger events
# Description: Trigger events that run integrations
data "frontegg_permission" "fe_connectivity_write_triggerevent" {
  key = "fe.connectivity.write.triggerEvent"
}

# Permission: fe.connectivity.write.updateSlackSubscription
# Name: Update Slack subscriptions
# Description: Update Slack subscriptions
data "frontegg_permission" "fe_connectivity_write_updateslacksubscription" {
  key = "fe.connectivity.write.updateSlackSubscription"
}

# Permission: fe.connectivity.write.updateUserBellNotification
# Name: Update bell notifications
# Description: Update bell notifications
data "frontegg_permission" "fe_connectivity_write_updateuserbellnotification" {
  key = "fe.connectivity.write.updateUserBellNotification"
}

# Permission: fe.connectivity.write.webhook
# Name: Write webhooks
# Description: Create and update webhook configuration
data "frontegg_permission" "fe_connectivity_write_webhook" {
  key = "fe.connectivity.write.webhook"
}

# Permission: fe.secure.delete.*
# Name: Secure delete
# Description: All secure access delete permissions
data "frontegg_permission" "fe_secure_delete_all" {
  key = "fe.secure.delete.*"
}

# Permission: fe.secure.delete.appsUsers
# Name: Remove user from applications
# Description: Remove any application from users
data "frontegg_permission" "fe_secure_delete_appsusers" {
  key = "fe.secure.delete.appsUsers"
}

# Permission: fe.secure.delete.emailDomainRestrictions
# Name: Delete email domain restriction
# Description: Delete email domain restrictions
data "frontegg_permission" "fe_secure_delete_emaildomainrestrictions" {
  key = "fe.secure.delete.emailDomainRestrictions"
}

# Permission: fe.secure.delete.groups
# Name: Delete groups
# Description: Delete any group
data "frontegg_permission" "fe_secure_delete_groups" {
  key = "fe.secure.delete.groups"
}

# Permission: fe.secure.delete.groupsUsers
# Name: Remove users from groups
# Description: Remove users from any group
data "frontegg_permission" "fe_secure_delete_groupsusers" {
  key = "fe.secure.delete.groupsUsers"
}

# Permission: fe.secure.delete.ipRestrictions
# Name: Delete IP restrictions
# Description: Delete IP restrictions
data "frontegg_permission" "fe_secure_delete_iprestrictions" {
  key = "fe.secure.delete.ipRestrictions"
}

# Permission: fe.secure.delete.provisioningConfiguration
# Name: Delete provisioning configuration
# Description: Delete provisioning configurations
data "frontegg_permission" "fe_secure_delete_provisioningconfiguration" {
  key = "fe.secure.delete.provisioningConfiguration"
}

# Permission: fe.secure.delete.role
# Name: Delete roles
# Description: Delete account roles
data "frontegg_permission" "fe_secure_delete_role" {
  key = "fe.secure.delete.role"
}

# Permission: fe.secure.delete.samlConfiguration
# Name: Delete SAML configuration
# Description: Delete account SAML configuration
data "frontegg_permission" "fe_secure_delete_samlconfiguration" {
  key = "fe.secure.delete.samlConfiguration"
}

# Permission: fe.secure.delete.securityPolicy
# Name: Delete security policies
# Description: Delete security policies
data "frontegg_permission" "fe_secure_delete_securitypolicy" {
  key = "fe.secure.delete.securityPolicy"
}

# Permission: fe.secure.delete.sessions
# Name: Revoke user sessions
# Description: Revoke all user sessions
data "frontegg_permission" "fe_secure_delete_sessions" {
  key = "fe.secure.delete.sessions"
}

# Permission: fe.secure.delete.tenantApiTokens
# Name: Delete tenant API tokens
# Description: Delete account API tokens
data "frontegg_permission" "fe_secure_delete_tenantapitokens" {
  key = "fe.secure.delete.tenantApiTokens"
}

# Permission: fe.secure.delete.tenantInvites
# Name: Delete account invitations
# Description: Delete account invitations
data "frontegg_permission" "fe_secure_delete_tenantinvites" {
  key = "fe.secure.delete.tenantInvites"
}

# Permission: fe.secure.delete.userApiTokens
# Name: Delete user API tokens
# Description: Delete own API tokens
data "frontegg_permission" "fe_secure_delete_userapitokens" {
  key = "fe.secure.delete.userApiTokens"
}

# Permission: fe.secure.read.accountSettings
# Name: Read security policies
# Description: View account settings
data "frontegg_permission" "fe_secure_read_accountsettings" {
  key = "fe.secure.read.accountSettings"
}

# Permission: fe.secure.read.audits
# Name: Read audits
# Description: View audit logs
data "frontegg_permission" "fe_secure_read_audits" {
  key = "fe.secure.read.audits"
}

# Permission: fe.secure.read.emailDomainRestrictions
# Name: Read email domain restrictions
# Description: View domain restrictions and configuration
data "frontegg_permission" "fe_secure_read_emaildomainrestrictions" {
  key = "fe.secure.read.emailDomainRestrictions"
}

# Permission: fe.secure.read.groups
# Name: Read groups
# Description: View all groups
data "frontegg_permission" "fe_secure_read_groups" {
  key = "fe.secure.read.groups"
}

# Permission: fe.secure.read.ipRestrictions
# Name: Read IP restrictions
# Description: View IP restrictions and configuration
data "frontegg_permission" "fe_secure_read_iprestrictions" {
  key = "fe.secure.read.ipRestrictions"
}

# Permission: fe.secure.read.passwordExpirationConfiguration
# Name: Read password expiration configuration
# Description: Read password expiration configuration
data "frontegg_permission" "fe_secure_read_passwordexpirationconfiguration" {
  key = "fe.secure.read.passwordExpirationConfiguration"
}

# Permission: fe.secure.read.provisioningConfiguration
# Name: Read provisioning configurations
# Description: View provisioning configurations
data "frontegg_permission" "fe_secure_read_provisioningconfiguration" {
  key = "fe.secure.read.provisioningConfiguration"
}

# Permission: fe.secure.read.samlConfiguration
# Name: Read SAML configurations
# Description: View vendor and tenant SAML configuration
data "frontegg_permission" "fe_secure_read_samlconfiguration" {
  key = "fe.secure.read.samlConfiguration"
}

# Permission: fe.secure.read.samlDefaultRoles
# Name: Read SAML default roles
# Description: View SAML default role configuration
data "frontegg_permission" "fe_secure_read_samldefaultroles" {
  key = "fe.secure.read.samlDefaultRoles"
}

# Permission: fe.secure.read.securityPolicy
# Name: Read security policies
# Description: View security policies
data "frontegg_permission" "fe_secure_read_securitypolicy" {
  key = "fe.secure.read.securityPolicy"
}

# Permission: fe.secure.read.tenantApiTokens
# Name: Read account API tokens
# Description: View all account API tokens
data "frontegg_permission" "fe_secure_read_tenantapitokens" {
  key = "fe.secure.read.tenantApiTokens"
}

# Permission: fe.secure.read.userApiTokens
# Name: Read user API tokens
# Description: View own API tokens
data "frontegg_permission" "fe_secure_read_userapitokens" {
  key = "fe.secure.read.userApiTokens"
}

# Permission: fe.secure.write.*
# Name: Secure write
# Description: All secure access write permissions
data "frontegg_permission" "fe_secure_write_all" {
  key = "fe.secure.write.*"
}

# Permission: fe.secure.write.accountSettings
# Name: Write account settings
# Description: Create or update account settings
data "frontegg_permission" "fe_secure_write_accountsettings" {
  key = "fe.secure.write.accountSettings"
}

# Permission: fe.secure.write.actorToken
# Name: Create or revoke actor tokens
# Description: Create new or revoke existing actor tokens
data "frontegg_permission" "fe_secure_write_actortoken" {
  key = "fe.secure.write.actorToken"
}

# Permission: fe.secure.write.appsUsers
# Name: Assign user to applications
# Description: Assign any application to users
data "frontegg_permission" "fe_secure_write_appsusers" {
  key = "fe.secure.write.appsUsers"
}

# Permission: fe.secure.write.delegation
# Name: Delegation
# Description: Act on behalf of another user
data "frontegg_permission" "fe_secure_write_delegation" {
  key = "fe.secure.write.delegation"
}

# Permission: fe.secure.write.emailDomainRestrictions
# Name: Create new email domain restrictions
# Description: Create new email domain restrictions and edit configuration
data "frontegg_permission" "fe_secure_write_emaildomainrestrictions" {
  key = "fe.secure.write.emailDomainRestrictions"
}

# Permission: fe.secure.write.groups
# Name: Create or update groups
# Description: Create or update any group
data "frontegg_permission" "fe_secure_write_groups" {
  key = "fe.secure.write.groups"
}

# Permission: fe.secure.write.groupsRoles
# Name: Edit group roles
# Description: Edit roles of any group
data "frontegg_permission" "fe_secure_write_groupsroles" {
  key = "fe.secure.write.groupsRoles"
}

# Permission: fe.secure.write.groupsUsers
# Name: Add users to groups
# Description: Add users to any group
data "frontegg_permission" "fe_secure_write_groupsusers" {
  key = "fe.secure.write.groupsUsers"
}

# Permission: fe.secure.write.ipRestrictions
# Name: Create new IP restrictions
# Description: Create new IP restriction and modify configuration
data "frontegg_permission" "fe_secure_write_iprestrictions" {
  key = "fe.secure.write.ipRestrictions"
}

# Permission: fe.secure.write.passwordExpirationConfiguration
# Name: Write password expiration configuration
# Description: Write password expiration configuration
data "frontegg_permission" "fe_secure_write_passwordexpirationconfiguration" {
  key = "fe.secure.write.passwordExpirationConfiguration"
}

# Permission: fe.secure.write.provisioningConfiguration
# Name: Create new provisioning configurations
# Description: Create new provisioning configurations
data "frontegg_permission" "fe_secure_write_provisioningconfiguration" {
  key = "fe.secure.write.provisioningConfiguration"
}

# Permission: fe.secure.write.resendActivationEmail
# Name: Resend activation emails
# Description: Resend activation emails to non-verified users
data "frontegg_permission" "fe_secure_write_resendactivationemail" {
  key = "fe.secure.write.resendActivationEmail"
}

# Permission: fe.secure.write.roles
# Name: Write roles
# Description: Create account roles
data "frontegg_permission" "fe_secure_write_roles" {
  key = "fe.secure.write.roles"
}

# Permission: fe.secure.write.samlConfiguration
# Name: Write SAML configurations
# Description: Create and update account SAML configurations
data "frontegg_permission" "fe_secure_write_samlconfiguration" {
  key = "fe.secure.write.samlConfiguration"
}

# Permission: fe.secure.write.samlDefaultRoles
# Name: Write SAML default roles
# Description: Write SAML default roles
data "frontegg_permission" "fe_secure_write_samldefaultroles" {
  key = "fe.secure.write.samlDefaultRoles"
}

# Permission: fe.secure.write.securityPolicy
# Name: Write security policies
# Description: Create or update security policies
data "frontegg_permission" "fe_secure_write_securitypolicy" {
  key = "fe.secure.write.securityPolicy"
}

# Permission: fe.secure.write.tenantApiTokens
# Name: Write account API tokens
# Description: Create or update account API tokens
data "frontegg_permission" "fe_secure_write_tenantapitokens" {
  key = "fe.secure.write.tenantApiTokens"
}

# Permission: fe.secure.write.updateRole
# Name: Update roles
# Description: Update account roles
data "frontegg_permission" "fe_secure_write_updaterole" {
  key = "fe.secure.write.updateRole"
}

# Permission: fe.secure.write.userApiTokens
# Name: Write user API tokens
# Description: Create and update own API tokens
data "frontegg_permission" "fe_secure_write_userapitokens" {
  key = "fe.secure.write.userApiTokens"
}

# Permission: fe.subscriptions.*
# Name: Subscriptions general
# Description: All subscription permissions
data "frontegg_permission" "fe_subscriptions_all" {
  key = "fe.subscriptions.*"
}

# Permission: fe.subscriptions.read.*
# Name: Subscriptions read
# Description: All subscription read permissions
data "frontegg_permission" "fe_subscriptions_read_all" {
  key = "fe.subscriptions.read.*"
}

# Permission: fe.subscriptions.write.*
# Name: Subscriptions write
# Description: All subscriptions write permissions
data "frontegg_permission" "fe_subscriptions_write_all" {
  key = "fe.subscriptions.write.*"
}
