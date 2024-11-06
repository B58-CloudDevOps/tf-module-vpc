# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = local.igw_rt_tags
}

# Nat gateway
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.xxxx.id
  subnet_id     = aws_subnet.web.*.id[0]

  tags = {
    Name = local.ngw_rt_tags
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.example]
}