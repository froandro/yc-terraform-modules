variable "folder" { 
  type        = string
  default     = "b1gsd1tj5k2ia1pobrj4"
  description = "Folder ID"

}

variable "name_service_account" { 
  type        = set(string)
  default     = ["service-account1","service-account2"]  # The format of the variable must be "set(string)"
  description = "Name service account"
}

variable "role_service_account" {
  type = string
  default = "editor" # The list of available roles on https://cloud.yandex.com/en/docs/iam/concepts/access-control/roles
  description = "Role service account"
}