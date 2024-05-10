terraform {

  backend "gcs" {
    bucket = "aidana-gke-tftate"
    prefix = "tfstate"
  }

}
