terraform {
  backend "gcs" {
    credentials = "/var/lib/jenkins/terraform-gkecluster-keyfile.json"
    bucket      = "terraform-state-mariofried-gke"
    prefix      = "terraform/state"
  }
}
