# Terraform Managed Instance Group Module

This module creates a managed instance group based on the input parameters, including the image to run.

The resources that this module will create are:
- Create an instance template from the `compute_image`
- Create a managed instance group in the provided `region`/`zone`
- Configure a load balancer (backend, url-map, proxy, healthchecks and forwarding rule)

## Usage
A simple example is as follow:

```hcl
module "managed" {
  source="../../"
  project_id="<PROJECT ID>"
  
  region="us-central1"
  zone="us-central1-a"

  prefix="my-app"

  compute_image="debian/debian-9"
}
```
Note: that for this example, the `compute_image` provided must have a web server running on port 80

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| region | The region within the managed instance group should run | string | `` | yes |
| zone | A zone within the specified region within the managed instance group shoudl run | string | `` | yes |
| prefix | The prefix for all of the components that are created, such as `my-app` or similar (no trailing character required) | string | `` | yes |
| compute_image | The compute image that should be used for creating the instance template | string | `` | yes |

## Todo
- Make this work for far more than port 80
- Allow for named port translations
- Make the instance group size a variable (currently set to 5)
- Make the network VPC a variable (currently set to `default`)
- 