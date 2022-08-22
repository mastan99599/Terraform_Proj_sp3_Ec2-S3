ami                   = "ami-068257025f72f470d"
instance_type         = "t3.large"
volume_type           = "gp2"
volume_size           = "30"
delete_on_termination = false

tagname   = {
  "Name"  = "shaikec2"
  "owner" = "shaik"
}

http_endpoint               = "enabled"
http_put_response_hop_limit = "1"
http_tokens                 = "optional"
instance_metadata_tags      = "disabled"
disable_api_termination     = "false"
ebs_optimized               = "false"
enabled                     = "false"
cpu_core_count              = "1"
cpu_threads_per_core        = "1"
cpu_credits                 = "standard"
cidr_block                  = "10.0.1.0/24"

subnettag = {
  "owner" = "shaik"
  "Name"  = "shaik-subnet"
}

cidr_block2 = "10.0.0.0/16"

vpctag = {

  "owner" = "shak"
  "Name"  = "shiak_vpc"
}

instance_tenancy = "default"
sg_name          = "shaik_sg"

 
from_port    = 80
to_port      = 80
protocol     = "tcp"

cidr_block3  = ["0.0.0.0/0"]


from_port1   = 0
to_port1     = 0
protocol1    = "-1"
cidr_block4  = ["0.0.0.0/0"]

tags3   = {
  Name  = "shaikdemos3"
  owner = "shaik"
}

bucket  = "shaikbuckettf"
acl     = "private"

name    = "shaikS3FullAccess"
sid     = "shaikS3FullAccess"
