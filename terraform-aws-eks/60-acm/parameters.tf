resource "aws_ssm_parameter" "subbuaws" {
    name = "/${var.project}/${var.environment}/acm_certificate_arn" 
    type = "String" 
    value  = aws_acm_certificate.subbuaws.arn 
}
