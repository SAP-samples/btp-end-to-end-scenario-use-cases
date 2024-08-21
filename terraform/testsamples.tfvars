# ------------------------------------------------------------------------------------------------------
# Provider configuration
# ------------------------------------------------------------------------------------------------------
# Your global account subdomain
globalaccount     = "terraformintprod"
region            = "eu10"
subaccount_name   = "PES"
subaccount_admins = ["jane.doe@test.com", "john.doe@test.com"]
cf_org_user      = ["syed.ejazuddin@sap.com", "stephen.cherian@sap.com", "prajin.ollekkatt.prakasan@sap.com"]
cf_space_manager = ["syed.ejazuddin@sap.com", "stephen.cherian@sap.com"]
origin           = "sap.ids"
#------------------------------------------------------------------------------------------------------
# Entitlements plan update
#------------------------------------------------------------------------------------------------------
# For production use of Business Application Studio, upgrade the plan from the `free-tier` to the appropriate plan e.g standard-edition
bas_plan_name = "standard-edition"
cls_plan_name = "standard"
