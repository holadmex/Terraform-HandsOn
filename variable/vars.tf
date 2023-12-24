variable REGION {
  default = "us-east-1"
}

variable ZONE1 {
  default = "us-east-1a"
}

variable AMIS {
  type = map
  default = {
    us-east-1 = "ami-0fc5d935ebf8bc3bc"
    us-east-1 = "ami-0230bd60aa48260c6"
  }
}
