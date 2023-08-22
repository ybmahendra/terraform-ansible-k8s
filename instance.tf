resource "aws_instance" "kube_ins" {
    count = 1
    ami = var.Kubernates_ami
    vpc_security_group_ids = [aws_security_group.kube_sg1.id]
    subnet_id = element(aws_subnet.kube_subnets.*.id, count.index)
    instance_type = var.master_instance_type
    key_name = var.Key_name

    tags = {

        "Name" = "Master_Node"
        Type = "kube-master"
    }

}

resource "aws_instance" "kube_wor" {
    count = 2
    ami = var.Kubernates_ami
    vpc_security_group_ids = [aws_security_group.kube_sg1.id]
    instance_type = var.worker_instance_type
    key_name = var.Key_name
    subnet_id = element(aws_subnet.kube_subnets.*.id, count.index)

    tags = {

        Name = "kube_work"
        Name = "Kube_work"
    }
}
 