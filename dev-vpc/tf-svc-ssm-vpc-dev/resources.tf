/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:617296401743:service/tf-svc-ssm-vpc/service-instance/dev

If the resource is no longer is accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

resource "aws_ssm_parameter" "service_ssm_param" {
  name  = "service_ssm_param"
  type  = "String"
  value = var.service_instance.inputs.ssm_parameter_value
}

resource "aws_ssm_parameter" "env_vpc_arn" {
  name = "env_vpc_arn"
  type = "String"
  value = var.environment.outputs.vpc_arn
}
