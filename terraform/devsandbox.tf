module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft.controltower+sandbox@gmail.com"
    AccountName               = "dev"
    ManagedOrganizationalUnit = "Just Dev"
    SSOUserEmail              = "aft.controltower+aft@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Dev" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dev"
}
