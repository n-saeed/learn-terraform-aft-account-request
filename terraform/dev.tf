module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft.controltower+dev@gmail.com"
    AccountName               = "dev-aft"
    ManagedOrganizationalUnit = "Just Dev"
    SSOUserEmail              = "aft.controltower+aft@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Dev" = "DEV"
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
