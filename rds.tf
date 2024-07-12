module "aws_rds_mysql" {
  source               = "git::https://github.com/ashisharyan1993/terraform-module-rds-mysql.git"
  engine               = local.engine
  identifier           = local.identifier
  allocated_storage    = local.allocated_storage
  engine_version       = local.engine_version
  instance_class       = local.instance_class
  db_name              = local.identifier
  username             = local.username
  password             = local.password
  parameter_group_name = local.parameter_group_name
  skip_final_snapshot  = local.skip_final_snapshot
  publicly_accessible  = local.publicly_accessible
  vpc_id               = module.vpc.vpc_id
  rds_sg_name          = local.rds_sg_name
  private_subnet       = module.vpc.private_subnet_id
  public_subnet        = module.vpc.public_subnet_id
}

output "rds_endpoint" {
  value = module.aws_rds_mysql.db_instance_endpoint
}
