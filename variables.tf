variable "region" {
    type = string
    default = "ap-south-1"
}

variable "availability_zone" {
    type = string
    default = "ap-south-1a"
}

variable "instance_type" {
    type = string
    default = "t4g.small"
}

variable "root_volume_size" {
    type = string
    default = "10"
}