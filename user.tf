resource "oci_identity_domains_user" "user" {
  active                       = true
  attribute_sets               = null
  attributes                   = null
  authorization                = null
  description                  = null
  display_name                 = var.display_name
  external_id                  = null
  idcs_endpoint                = data.oci_identity_domain.domain.url
  locale                       = null
  nick_name                    = null
  password                     = null # sensitive
  preferred_language           = null
  profile_url                  = null
  resource_type_schema_version = null
  schemas                      = ["urn:ietf:params:scim:schemas:core:2.0:User", "urn:ietf:params:scim:schemas:oracle:idcs:extension:userState:User", "urn:ietf:params:scim:schemas:oracle:idcs:extension:OCITags", "urn:ietf:params:scim:schemas:oracle:idcs:extension:user:User"]
  timezone                     = null
  title                        = null
  user_name                    = var.user_name
  user_type                    = null

  emails {
    primary   = false
    secondary = false
    type      = "recovery"
    value     = var.recovery_email
  }

  emails {
    primary   = true
    secondary = false
    type      = "work"
    value     = var.primary_email
  }

  name {
    family_name      = var.family_name
    given_name       = var.given_name
    honorific_prefix = null
    honorific_suffix = null
    middle_name      = null
  }
}
