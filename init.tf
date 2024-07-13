locals {
  # AWS Account details
  region     = "us-west-2"
  access_key = ""
  secret_key = ""

  # Prefix enviroment
  prefix = "wp"

  #VPC for RDS
  vpc_cidr_block            = "10.1.0.0/16"
  public_subnet_cidr_block  = "10.1.1.0/24"
  private_subnet_cidr_block = "10.1.2.0/24"

  # RDS Details for module
  engine               = "mysql"
  identifier           = "wordpress"
  allocated_storage    = 5
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "wordpressdb"
  password             = "myrdspassword"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  publicly_accessible  = true
  rds_sg_name          = "wp-db-sg"

  #Ecs details for wordpress
  ecs_cluster_name = "Wordpress-ecs"
  db_name          = "wordpress-db"
  wp_title         = "Wordpress on ECS"
  wp_user          = "admin"
  wp_password      = "Welcome-123"
  wp_mail          = "aryan67912@gmail.com"
}
