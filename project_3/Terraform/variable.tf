variable region {
  type = string
  description = "Provide region"
}

variable vpc_cidr {
  type = string
  description = "provide vpc cidr block"
}

variable subnet1_cidr {
  type = string
  description = "provide subnet1 cidr block"
}

variable subnet2_cidr {
  type = string
  description = "provide subnet2 cidr block"
}

variable subnet3_cidr {
  type = string
  description = "provide subnet3 cidr block"
}

variable ip_on_launch {
    type = bool  
}

variable instance_type {
    type = string
  
}