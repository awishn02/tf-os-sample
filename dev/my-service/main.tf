terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "wishnick-terraform-states"
    key    = "tf-os-sample/terraform.tfstate"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "aws_ssm_parameter" "service_param" {
  name  = "service_param"
  type  = "String"
  value = "service_param_value_1"
}