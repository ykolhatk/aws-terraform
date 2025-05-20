resource "aws_instance" "this" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  iam_instance_profile   = var.iam_instance_profile

  provisioner "local-exec" {
    command = "aws ec2 modify-instance-attribute --instance-id ${self.id} --disable-api-termination --region ${var.region}"
  }

    provisioner "local-exec" {
    command = "aws ec2 modify-instance-attribute --instance-id ${self.id} --disable-api-stop --region ${var.region}"
  }
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    iops        = var.iops
  }

  tags = merge(var.tags, {
    Name = var.name
  })
}


resource "aws_ec2_instance_state" "this" {
  instance_id                   = aws_instance.this.id
  state = "running"
}


data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Use the official AWS account
}


