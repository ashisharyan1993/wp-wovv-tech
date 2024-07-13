module "wordpress" {
  source           = "git::https://github.com/ashisharyan1993/terraform-module-wordpress.git"
  ecs_cluster_name = local.ecs_cluster_name
  db_host          = module.aws_rds_mysql.db_instance_endpoint
  db_name          = local.db_name
  db_user          = local.username
  db_password      = local.password
  wp_title         = local.wp_title
  wp_user          = local.wp_user
  wp_password      = local.wp_password
  wp_mail          = local.wp_mail
  db_endpoint_arn  = module.aws_rds_mysql.db_instance_arn
  vpc_id           = module.vpc.vpc_id
  private_subnet   = module.vpc.private_subnet_id
  public_subnet    = module.vpc.public_subnet_id
}

data "aws_network_interface" "interface_tags" {
  filter {
    name   = "tag:aws:ecs:serviceName"
    values = [local.wp_svc_name]
  }
}

output "WP_public_ip" {
    value = data.aws_network_interface.interface_tags.association[0].public_ip
}