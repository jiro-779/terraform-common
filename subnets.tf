resource "aws_subnet" "public_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_1_cidr

  availability_zone = "eu-north-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-1"
  }

}
resource "aws_subnet" "public_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_2_cidr

  availability_zone = "eu-north-1b"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-2"
  }

}
resource "aws_subnet" "private_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.private_subnet_1_cidr

  availability_zone = "eu-north-1a"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-1"
  }

}
resource "aws_subnet" "private_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.private_subnet_2_cidr

  availability_zone = "eu-north-1b"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-2"
  }

}
resource "aws_subnet" "private_db_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_db_subnet_1_cidr
  availability_zone = "eu-north-1a"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-db-subnet-1"
  }
}

resource "aws_subnet" "private_db_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_db_subnet_2_cidr
  availability_zone = "eu-north-1b"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-db-subnet-2"
  }
}