variable "group_name" {
  type = string
  description = "The name of the Gitlab group"
}

variable "group_path" {
  type = string
  description = "The path of the Gitlab group"
}

variable "group_parent_id" {
  type = number
  description = "The parent ID of the Gitlab group"
  default = null
}