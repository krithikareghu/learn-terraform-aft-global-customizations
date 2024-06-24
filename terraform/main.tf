

data "aws_organizations_organization" "memic" {}

resource "aws_securityhub_organization_admin_account" "example" {
  depends_on = [data.aws_organizations_organization.memic]

  admin_account_id = "471112981047"
}

resource "aws_securityhub_organization_configuration" "example" {
  auto_enable = true
}

resource "aws_securityhub_account" "example" {

}