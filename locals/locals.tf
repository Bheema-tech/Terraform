locals {
  final_ec2_name = "${var.project}-${var.environment}-${var.component}"
  ec2_tags = merge (
    var.common_tags,
    {
         environment = "dev"
        version     = "1.1"
    }
  )
}