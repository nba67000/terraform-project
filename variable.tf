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

# alb variables
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:eu-west-3:072307788259:certificate/c553dfa6-b241-47c5-9a5b-b612af1f9488"
  description   = "ssl certificate arn"
  type          = string
}

# sns variables
variable "operator_email" {
  default       = "nba67000@gmail.com"
  description   = "valid email adress"
  type          = string
}

# asg variables
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "name of the launch template"
  type          = string
}

variable "ec2_image_id" {
  default       = "ami-09da452599a0df550"
  description   = "id of the AMI"
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "ec2 instance type"
  type          = string
}

variable "ec2_key_pair_name" {
  default       = "WindowsPPK"
  description   = "name of ec2 key pair"
  type          = string
}