resource "google_compute_network" "vpc_network" {
 name = "vpc-terraform-network"
 auto_create_subnetworks = false
}