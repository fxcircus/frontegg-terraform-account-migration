variable "frontegg_client_id" {
  description = "Frontegg API Client ID from the administration portal"
  type        = string
  sensitive   = true
}

variable "frontegg_secret_key" {
  description = "Frontegg API Secret Key from the administration portal"
  type        = string
  sensitive   = true
}

variable "frontegg_environment_id" {
  description = "Frontegg Environment ID (optional, for environment-specific configuration)"
  type        = string
  default     = ""
}

variable "frontegg_region" {
  description = "Frontegg region (EU, US, UK, CA, or AU)"
  type        = string
  default     = "EU"
  validation {
    condition     = contains(["EU", "US", "UK", "CA", "AU"], var.frontegg_region)
    error_message = "Region must be one of: EU, US, UK, CA, AU"
  }
}

variable "workspace_name" {
  description = "Name of the Frontegg workspace"
  type        = string
  default     = "My Application"
}

variable "country" {
  description = "Country code for the workspace (e.g., US, GB, DE)"
  type        = string
  default     = "US"
}

variable "backend_stack" {
  description = "Backend technology stack (e.g., Node.js, Python, Java, .NET)"
  type        = string
  default     = "Node.js"
}

variable "frontend_stack" {
  description = "Frontend technology stack (e.g., React, Angular, Vue)"
  type        = string
  default     = "React"
}

variable "frontegg_domain" {
  description = "Your Frontegg domain (must end with .frontegg.com)"
  type        = string
  validation {
    condition     = can(regex("\\.frontegg\\.com$", var.frontegg_domain))
    error_message = "The frontegg_domain must end with .frontegg.com"
  }
}

variable "allowed_origins" {
  description = "List of allowed origins for CORS"
  type        = list(string)
  default     = ["http://localhost:3000", "http://localhost:3001"]
}

variable "custom_domains" {
  description = "List of custom domains for the workspace"
  type        = list(string)
  default     = []
}

variable "enable_mfa" {
  description = "Enable Multi-Factor Authentication"
  type        = bool
  default     = true
}

variable "mfa_enforcement" {
  description = "MFA enforcement policy (off, unless_saml, always)"
  type        = string
  default     = "unless_saml"
  validation {
    condition     = contains(["off", "unless_saml", "always"], var.mfa_enforcement)
    error_message = "MFA enforcement must be one of: off, unless_saml, always"
  }
}

variable "password_min_length" {
  description = "Minimum password length"
  type        = number
  default     = 8
}

variable "password_require_uppercase" {
  description = "Require uppercase letters in password"
  type        = bool
  default     = true
}

variable "password_require_lowercase" {
  description = "Require lowercase letters in password"
  type        = bool
  default     = true
}

variable "password_require_number" {
  description = "Require numbers in password"
  type        = bool
  default     = true
}

variable "password_require_special_char" {
  description = "Require special characters in password"
  type        = bool
  default     = true
}

variable "lockout_max_attempts" {
  description = "Maximum failed login attempts before lockout"
  type        = number
  default     = 5
}

variable "lockout_duration_minutes" {
  description = "Account lockout duration in minutes"
  type        = number
  default     = 15
}

variable "enable_captcha" {
  description = "Enable CAPTCHA for authentication"
  type        = bool
  default     = false
}

variable "captcha_site_key" {
  description = "reCAPTCHA site key"
  type        = string
  default     = ""
  sensitive   = true
}

variable "captcha_secret_key" {
  description = "reCAPTCHA secret key"
  type        = string
  default     = ""
  sensitive   = true
}

variable "enable_saml" {
  description = "Enable SAML SSO"
  type        = bool
  default     = false
}

variable "enable_oidc" {
  description = "Enable OIDC SSO"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    ManagedBy   = "Terraform"
    Environment = "Production"
  }
}