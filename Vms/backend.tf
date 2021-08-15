terraform {
  backend "gcs"{
    bucket      = "turnkey-cooler-3165131"
    prefix      = "dev"
    credentials = "/home/osboxes/key/credentials.json"
  }
}