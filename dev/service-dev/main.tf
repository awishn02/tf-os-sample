/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:617296401743:service/tf-svc/service-instance/service-dev

If the resource is no longer is accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  # This tells terraform to store the state file in s3 at the location
  # s3://terraform-state-bucket/tf-os-sample/terraform.tfstate
  backend "s3" {
    bucket = "wishnick-terraform-states"
    key    = "tf-os-sample/service-dev/terraform.tfstate"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "aws_ssm_parameter" "foo_test" {
  name  = "foo_test"
  type  = "String"
  value = var.service_instance.inputs.ssm_parameter_value
}

resource "aws_ssm_parameter" "env_output_param" {
  name = "env_output_param"
  type = "String"
  value = var.service_instance.environment.outputs.random_output
}

output "random_svc_output" {
  value = "some_svc_output"
}
