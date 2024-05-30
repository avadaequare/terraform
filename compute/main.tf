resource "google_compute_instance" "terraform-vm" {
  name         = "test"
  machine_type = "n2-standard-2"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
   network_interface {
    network = "default"
   }

   metadata_startup_script = "echo hi > /test.txt"
}
