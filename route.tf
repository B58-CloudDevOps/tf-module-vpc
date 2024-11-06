resource "aws_route" "default-vpc" {
  route_table_id            = var.default_vpc_rt
  destination_cidr_block    = var.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.main.id
}

resource "aws_route_table" "web" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block                = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.main.id
  }
}

resource "aws_route_table" "app" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block                = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.main.id
  }
}


resource "aws_route_table" "db" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block                = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.main.id
  }
}
