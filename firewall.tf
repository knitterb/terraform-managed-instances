resource "google_compute_firewall" "default" {
  name    = "${var.prefix}-allow-80"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["80"]      
  }

}