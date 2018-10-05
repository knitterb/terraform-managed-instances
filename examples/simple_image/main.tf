module "test-managed-instance" {
  source="../../"
  project_id="${var.project_id}"
  
  region="${var.region}"
  zone="${var.zone}"

  prefix="${var.prefix}"

  compute_image="${var.compute_image}"
}
