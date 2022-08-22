
  resource "aws_instance" "web" {
  ami                           = var.ami
  instance_type                 = var.instance_type
  

  root_block_device {
    volume_type                 = var.volume_type
    volume_size                 = var.volume_size
    delete_on_termination       = var.delete_on_termination
    tags                        = var.tagname
  }

  metadata_options {
    http_endpoint               = var.http_endpoint
    http_put_response_hop_limit = var.http_put_response_hop_limit
    http_tokens                 = var.http_tokens 
    instance_metadata_tags      = var.instance_metadata_tags
  }


  disable_api_termination       = var.disable_api_termination
  ebs_optimized                 = var.ebs_optimized
  
  enclave_options {
    enabled = var.enabled
  }
  cpu_core_count                = var.cpu_core_count
  cpu_threads_per_core          = var.cpu_threads_per_core
  credit_specification {
    cpu_credits                 = var.cpu_credits
  }
}


  resource "aws_subnet" "main" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.cidr_block
  tags             = var.subnettag
}

resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block2
  instance_tenancy = var.instance_tenancy
  tags             = var.vpctag
}

resource "aws_security_group" "web-sg" {
  name = var.sg_name

  ingress {
    from_port      = var.from_port
    to_port        = var.to_port
    protocol       = var.protocol
    cidr_blocks    = var.cidr_block3
  }



  egress {
    from_port      = var.from_port1
    to_port        = var.to_port1
    protocol       = var.protocol1
    cidr_blocks    = var.cidr_block4
  }
}
