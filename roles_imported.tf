# Roles
# Generated from source account
# Note: Custom permissions (non fe.*) are excluded from permission_ids

resource "frontegg_role" "plume" {
  name        = "plume"
  key         = "plume"
  description = "plume role"
  default  = false
  level = 0
  permission_ids = [
    data.frontegg_permission.fe_secure_delete_users.id,
    data.frontegg_permission.fe_secure_write_usersroles.id,
    data.frontegg_permission.fe_secure_delete_usersroles.id,
    data.frontegg_permission.fe_secure_delete_usersubtenants.id,
    data.frontegg_permission.fe_secure_write_enabledisable.id,
    data.frontegg_permission.fe_secure_write_updateuser.id,
    data.frontegg_permission.fe_secure_write_tenantinvites.id,
    data.frontegg_permission.fe_secure_write_usersubtenants.id,
    data.frontegg_permission.fe_secure_read_roles.id,
    data.frontegg_permission.fe_secure_write_users.id,
    data.frontegg_permission.fe_secure_read_users.id,
    data.frontegg_permission.fe_secure_read_permissions.id,
  ]
}

resource "frontegg_role" "readonly" {
  name        = "Read Only"
  key         = "ReadOnly"
  description = "Read Only role"
  default  = false
  level = 0
  permission_ids = [
    data.frontegg_permission.fe_connectivity_read_all.id,
    data.frontegg_permission.fe_secure_read_all.id,
  ]
}

resource "frontegg_role" "test" {
  name        = "test"
  key         = "test"
  description = "test role"
  default  = false
  level = 0
  permission_ids = []
}
