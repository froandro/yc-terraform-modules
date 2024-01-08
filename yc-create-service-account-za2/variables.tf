variable "folder" { 
  type        = string
  default     = "<Your ID Folder>"
  description = "Folder ID"

}

variable "name_service_account" { 
  type        = set(string)
  default     = ["service-account1","service-account2"]  # The format of the variable must be "set(string)"
  description = "Name service account"
}

variable "service_account_role" {
  type = string
  default = "editor" # The list of available roles on https://cloud.yandex.com/en/docs/iam/concepts/access-control/roles
  description = "Role service account"
}