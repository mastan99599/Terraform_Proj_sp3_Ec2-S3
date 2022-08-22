
module "ec2" {
source                      = "../ec2"
ami                         = var.ami
instance_type               = var.instance_type
volume_type                 = var.volume_type
volume_size                 = var.volume_size
http_endpoint               = var.http_endpoint
http_put_response_hop_limit = var.http_put_response_hop_limit
http_tokens                 = var.http_tokens 
instance_metadata_tags      = var.instance_metadata_tags
disable_api_termination     = var.disable_api_termination
ebs_optimized               = var.ebs_optimized
delete_on_termination       = var.delete_on_termination
enabled = var.enabled
cpu_core_count              = var.cpu_core_count
cpu_threads_per_core        = var.cpu_threads_per_core
cpu_credits                 = var.cpu_credits
instance_tenancy            = var.instance_tenancy
tagname                     = var.tagname
cidr_block                  = var.cidr_block
subnettag                   = var.subnettag
cidr_block2                 = var.cidr_block2
vpctag                      = var.vpctag
sg_name                     = var.sg_name
from_port                   = var.from_port
to_port                     = var.to_port
protocol                    = var.protocol
cidr_block3                 = var.cidr_block3
from_port1                  = var.from_port1
to_port1                    = var.to_port1
protocol1                   = var.protocol1
cidr_block4                 = var.cidr_block4
}


module "s3" {
source       = "../s3"
tags3        = var.tags3
bucket       = var.bucket
acl          = var.acl
name         = var.name
sid          = var.sid
}