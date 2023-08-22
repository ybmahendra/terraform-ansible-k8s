variable "aws_region" {
    default = "ap-south-1"
}

variable "Key_name" {
    default = "mm"
}

variable "vpc_cidr" {
    default = "172.0.0.0/24"
}
variable "subnet_cidr"{
    type = list(string)
    default = ["172.0.0.0/25","172.0.0.128/25"]

}

variable "availability_zones" {
    type = list(string)
    default = ["ap-south-1a","ap-south-1b"] 
}

variable "Kubernates_ami" {
    default = "ami-0f69bc5520884278e"
}

variable "master_instance_type" {
    default = "t2.medium"
}

variable "worker_instance_type" {
    default = "t2.micro"
}

