data "aws_organizations_organization" "org" {}

data "aws_organizations_organizational_units" "department" {
  parent_id = data.aws_organizations_organization.org.roots[0].id
  name      = var.department
}

data "aws_organizations_organizational_units" "tier" {
  parent_id = data.aws_organizations_organizational_units.department.id
  name      = var.tier
}

resource "aws_organizations_account" "tenant" {
  count = var.cloud_provider == "AWS" ? 1 : 0

  email             = var.owner
  name              = var.tenant_id
  close_on_deletion = true
  parent_id         = data.aws_organizations_organizational_units.tier.id
  tags              = {
    Name       = var.var.tenant_id
    Owner      = var.owner
    Department = var.department
    Tier       = var.tier
  }
}
