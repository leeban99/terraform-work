resource "google_compute_instance_group" "test" {
  name        = "terraform-test"
  description = "Terraform test instance group"
  zone        = "us-central1-a"
  network     = google_compute_network.vpc_network.id
  #instances = [google_compute_instance.vm_instance.id]
}
