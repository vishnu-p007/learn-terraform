# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_ami" {
  value = aws_instance.app_server.ami
}

output "instance_arn" {
  value = aws_instance.app_server.arn
}

