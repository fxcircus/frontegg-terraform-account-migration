# Permission Categories
# Generated from source account

resource "frontegg_permission_category" "general" {
  name = "General"
  description = "General permissions"
}

resource "frontegg_permission_category" "account_settings" {
  name = "Account settings"
  description = "Account profile settings"
}

resource "frontegg_permission_category" "secure_access" {
  name = "Secure access"
  description = "Secure access general"
}

resource "frontegg_permission_category" "security_policies" {
  name = "Security policies"
  description = "Secure access security policies"
}

resource "frontegg_permission_category" "saml" {
  name = "SAML"
  description = "Secure access SAML"
}

resource "frontegg_permission_category" "applications" {
  name = "Applications"
  description = "Applications permissions"
}

resource "frontegg_permission_category" "events" {
  name = "Events"
  description = "Connectivity Events"
}

resource "frontegg_permission_category" "slack_integration" {
  name = "Slack integration"
  description = "Connectivity Slack integration"
}

resource "frontegg_permission_category" "connectivity" {
  name = "Connectivity"
  description = "Connectivity general"
}

resource "frontegg_permission_category" "webpush_integration" {
  name = "Webpush integration"
  description = "Webpush notifications integration"
}

resource "frontegg_permission_category" "groups" {
  name = "Groups"
  description = "Secure access groups"
}

resource "frontegg_permission_category" "account_hierarchy" {
  name = "Account Hierarchy"
  description = "Account hierarchy"
}

resource "frontegg_permission_category" "api_tokens" {
  name = "API tokens"
  description = "Secure access API tokens"
}

resource "frontegg_permission_category" "user_management" {
  name = "User management"
  description = "Secure access users management"
}

resource "frontegg_permission_category" "email_integration" {
  name = "Email integration"
  description = "Connectivity email integration"
}

resource "frontegg_permission_category" "roles_and_permissions" {
  name = "Roles and permissions"
  description = "Secure access roles and permissions"
}

resource "frontegg_permission_category" "bell_notifications_integration" {
  name = "Bell notifications integration"
  description = "Connectivity bell notifications integration"
}

resource "frontegg_permission_category" "sms_integration" {
  name = "SMS integration"
  description = "Connectivity SMS integration"
}

resource "frontegg_permission_category" "audits" {
  name = "Audits"
  description = "Audit Logs"
}

resource "frontegg_permission_category" "webhooks_integration" {
  name = "Webhooks integration"
  description = "Connectivity webhooks integration"
}

resource "frontegg_permission_category" "subscriptions" {
  name = "Subscriptions"
  description = "Subscriptions access general"
}
