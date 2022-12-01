# vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip adress that can ssh into the ec2"
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:eu-west-3:072307788259:snapshot:fleet-card-final-snapshot"
  description   = "db snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "db instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "dev-rds-db"
  description   = "db instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "create a standby db instance"
  type          = bool
}