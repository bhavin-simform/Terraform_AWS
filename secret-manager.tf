# resource "aws_secretsmanager_secret" "main" {
#   name                    = "rds"
#   kms_key_id              = aws_kms_key.default.key_id
#   recovery_window_in_days = 14
#   description             = "RDS Admin Password"

#   tags = {
#     Name        = var.tag_name_for_project
#     Environment = var.tag_env_for_project
#   }
# }

# resource "random_password" "password" {
#   length           = 16
#   special          = true
#   override_special = "_!%^"
# }

# resource "aws_secretsmanager_secret_version" "secret" {
#   secret_id     = aws_secretsmanager_secret.main.id
#   secret_string = random_password.password.result
# }

