#cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

#jll vars

variable "ssh_key_file" {
  type        = string
  default     = "/Users/jullmaksimova/.ssh/clopro.pub"
}

variable "vm_user_nat" {
  type        = string
  default     = "jlljully"
}

variable "vm_nat_image" {
  type        = string
  default     = "fd80mrhj8fl2oe87o4e1"
}

#vm vars


variable "vm_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}


variable "vm_public_name" {
  type        = string
  default     = "jll-netology-pub"
}

variable "vm_private_name" {
  type        = string
  default     = "jll-netology-priv"
}

variable "vm_platform_id" {
  type        = string
  default     = "standard-v2"
}
