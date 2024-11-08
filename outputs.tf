variable "vpc_id" {
  value = aws_vpc.main.id
}

variable "lb_subnet_ids" {
  value = aws_subnet.db.*.id
}

variable "eks_subnet_ids" {
  value = aws_subnet.eks.*.id
}

variable "db_subnet_ids" {
  value = aws_subnet.db.*.id
}