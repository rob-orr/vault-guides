# ---------------------------------------------------------------------------------------------------------------------
# General Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "name"              { default = "infosec-vault-cluster" }
variable "common_name"       { default = "infosec-vault-cluster" }
variable "organization_name" { default = "Appian Infosec" }
variable "provider"          { default = "aws" }
variable "local_ip_url"      { default = "http://169.254.169.254/latest/meta-data/local-ipv4" }
variable "download_certs"    { default = false }
variable "ami_owner"         { default = "107700105839" }

# ---------------------------------------------------------------------------------------------------------------------
# Network Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "create_vpc" { default = false }
variable "vpc_id" { default = "vpc-077ae9a897087ee06" }
variable "vpc_cidr" { default = "10.140.240.0/20" }

variable "vpc_cidrs_public" {
  type    = "list"
  default = ["10.140.240.16/28"]
}

variable "vpc_cidrs_private" {
  type    = "list"
  default = ["10.140.242.192/28", "10.140.242.208/28", "10.140.242.224/28",]
}

variable "nat_count"              { default = 1 }
variable "bastion_servers"        { default = 1 }
variable "bastion_instance"       { default = "t2.micro" }
variable "bastion_release"        { default = "1.0.0" }
variable "bastion_consul_version" { default = "1.5.2" }
variable "bastion_vault_version"  { default = "1.1.3" }
variable "bastion_nomad_version"  { default = "0.9.3" }
variable "bastion_os"             { default = "RHEL" }
variable "bastion_os_version"     { default = "7.3" }
variable "bastion_image_id"       { default = "" }

variable "network_tags" {
  type    = "map"
  default = { }
}

# ---------------------------------------------------------------------------------------------------------------------
# Consul Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "consul_servers"    { default = 3 }
variable "consul_instance"   { default = "t2.small" }
variable "consul_release"    { default = "1.0.0" }
variable "consul_version"    { default = "1.5.2" }
variable "consul_os"         { default = "RHEL" }
variable "consul_os_version" { default = "7.3" }
variable "consul_image_id"   { default = "" }

variable "consul_public" {
  description = "If true, assign a public IP, open port 22 for public access, & provision into public subnets to provide easier accessibility without a Bastion host - DO NOT DO THIS IN PROD"
  default     = false
}

variable "consul_server_config_override" { default = "" }
variable "consul_client_config_override" { default = "" }

variable "consul_tags" {
  type    = "map"
  default = { }
}

variable "consul_tags_list" {
  type    = "list"
  default = [ ]
}

# ---------------------------------------------------------------------------------------------------------------------
# Vault Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "vault_servers"    { default = 1 }
variable "vault_instance"   { default = "t2.small" }
variable "vault_release"    { default = "1.0.0" }
variable "vault_version"    { default = "1.1.3" }
variable "vault_os"         { default = "RHEL" }
variable "vault_os_version" { default = "7.3" }
variable "vault_image_id"   { default = "" }

variable "vault_public" {
  description = "If true, assign a public IP, open port 22 for public access, & provision into public subnets to provide easier accessibility without a Bastion host - DO NOT DO THIS IN PROD"
  default     = false
}

variable "vault_server_config_override" { default = "" }

variable "vault_tags" {
  type    = "map"
  default = { }
}

variable "vault_tags_list" {
  type    = "list"
  default = [ ]
}
