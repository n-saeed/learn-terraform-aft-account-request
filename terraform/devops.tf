module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft.controltower+dev@gmail.com"
    AccountName               = "devops-aft"
    ManagedOrganizationalUnit = "Dev Ops"
    SSOUserEmail              = "aft.controltower+aft@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "Ops"
  }

  account_tags = {
    "Learn Tutorial" = "DEV"
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
