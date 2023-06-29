resource "aws_organizations_organization" "org" {
  aws_service_access_principals = [
    "auditmanager.${var.domain-suffix}",
    "backup.${var.domain-suffix}",
    "health.${var.domain-suffix}",
    "reporting.trustedadvisor.${var.domain-suffix}",
    # "trustedadvisor.${var.domain-suffix}",
    "member.org.stacksets.cloudformation.${var.domain-suffix}",
    # "cloudformation.${var.domain-suffix}",
    "cloudtrail.${var.domain-suffix}",
    "compute-optimizer.${var.domain-suffix}",
    "config.${var.domain-suffix}",
    "ram.${var.domain-suffix}",
    "servicecatalog.${var.domain-suffix}",
    "ssm.${var.domain-suffix}",
  ]

  feature_set = "ALL"
}
Data