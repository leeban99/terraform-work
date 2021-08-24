provider "google" {
 credentials = file("/home/osboxes/key/credentials.json")
 project     = "turnkey-cooler-316513"
 region      = "us-central1"
 zone        = "us-central1-a"
}