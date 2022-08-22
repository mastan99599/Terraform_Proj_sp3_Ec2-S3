variable "ami" {
  type = string

}

variable "instance_type" {
  type = string

}

variable "volume_type" {
  type = string

}


variable "volume_size" {
  type = number

}


variable "delete_on_termination" {
  type =string
}

variable "tagname" {
  type = map(any)

}


variable "http_endpoint" {
  type = string
  }
  

  variable "http_put_response_hop_limit" {
  type = number
  }


variable "http_tokens" {
  type = string
  }
 

variable "instance_metadata_tags" {
  type = string
  }

variable "disable_api_termination" {
  type = string
  
}


variable "enabled" {
  type = string
  
}

variable "ebs_optimized" {
  type = string
  
}


variable "cpu_core_count" {
  type = number
  
}

variable "cpu_threads_per_core" {
  type = number
  
}

variable "cpu_credits" {
  type = string
  
}

variable "cidr_block" {
  type = string

}

variable "subnettag" {
  type = map(any)

}

variable "vpctag" {
  type = map(any)

}


variable "instance_tenancy" {
  type = string
  
}
variable "cidr_block2" {
  type = string
}


variable "sg_name" {
  type = string
}


variable "from_port" {
  type = number
      
    }

variable "to_port" {
  type = number
      
    }

    
variable "protocol" {
  type = string
      
    }

variable "cidr_block3" {
  type = list(any)
  
}

variable "from_port1" {
  type =number
  
}


variable "to_port1" {
  type = number
  
}

variable "protocol1" {
  type = number
}

variable "cidr_block4" {
  type =list(any)
  
}


