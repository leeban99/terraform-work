provider "google" {
 credentials = file("/home/osboxes/key/credentials.json")
 project     = "turnkey-cooler-316513"
 region      = var.region
 zone        = var.zone
}

resource "google_compute_network" "vpc_network" {
 name = "vpc-terraform-network"
 auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "custom_mode_vpc" {
 name = "log-test-subnetwork"
 ip_cidr_range = "10.2.0.0/16"
 region = var.region
 network = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "terraforn_firewall" {
 name = "test-firewall"
 network = google_compute_network.vpc_network.name
 allow {
  protocol = "icmp"
 }
 allow {
     protocol = "tcp"
 }
 target_tags = ["demo-vm-instance"]
 source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm_instance" {
<<<<<<< HEAD
 count = 1
 name = "general-purpose-${count.index}-data"
=======
 name = "general-purpose"
>>>>>>> ff2dbe86c3f2aae1dbabf4918b65e5e1d439ffb5
 machine_type = "f1-micro"
 tags = ["gp-vm-instance"]
 boot_disk {
  initialize_params {
    image = "debian-cloud/debian-9"
  }    
 }
 network_interface {
  subnetwork = google_compute_subnetwork.custom_mode_vpc.id
  access_config{
  }
 }
}