variable "domain_id" {
  description = "The OCID of the identity domain."
  type        = string
}

variable "display_name" {
  description = "The display name of the user."
  type        = string
}

variable "user_name" {
  description = "System-distinctive name of the user."
  type        = string
}

variable "family_name" {
  description = "The family name of the user."
  type        = string
}

variable "given_name" {
  description = "The given name of the user."
  type        = string
}

variable "primary_email" {
  description = "The primary email of the user."
  type        = string
}

variable "recovery_email" {
  description = "The recovery email of the user."
  type        = string
}

