variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "region" {
  description = "The the region where this will be deployed"
  default="us-central1"
}

variable "zone" {
    description = "The zone within the region variable to deploy everything"
    default="us-central1-a"
}

variable "prefix" {
    description = "The prefix for all of the objects being created"
    default = "my-app"
}

variable "compute_image" {
    description = "The name of the image to use for creating compute instances within the instance group"
}


