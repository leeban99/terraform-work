variable "project" {
    default = "turnkey-cooler-316513"
 }

variable "credentials_file" { 
    default = "credentials.json"
}

variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east1-c"
}

variable "image" {default = "debian-cloud/debian-9"}
variable "machine_type" {default = "f1-micro"}
