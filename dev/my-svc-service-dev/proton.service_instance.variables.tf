/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:617296401743:service/my-svc/service-instance/service-dev

If the resource is no longer is accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

variable "service" {
  type = object({
    name = string
  })
}

variable "service_instance" {
  type = object({
    name = string
    inputs = map(string)
    environment = object({
      account_id = string
      outputs = map(string)
      name = string
    })
  })
  default = null
}