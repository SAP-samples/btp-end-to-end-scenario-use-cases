###############################################################################################
# Generating random ID for subdomain
###############################################################################################
resource "random_uuid" "uuid" {}
###############################################################################################
# Creation of subaccount
###############################################################################################
resource "btp_subaccount" "project" {
  name      = var.subaccount_name
  subdomain = "btp-gp${random_uuid.uuid.result}"
  region    = lower(var.region)
}
data "btp_whoami" "me" {}
###############################################################################################
# Assignment of users as sub account administrators
###############################################################################################
resource "btp_subaccount_role_collection_assignment" "subaccount-admins" {
  for_each             = toset("${var.subaccount_admins}")
  subaccount_id        = btp_subaccount.project.id
  role_collection_name = "Subaccount Administrator"
  user_name            = each.value
}
######################################################################
# Creation of Cloud Foundry environment
######################################################################
resource "btp_subaccount_environment_instance" "cloudfoundry" {
  subaccount_id    = btp_subaccount.project.id
  name             = "my-cf-environment"
  landscape_label  = "cf-eu10"
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "standard"
  # ATTENTION: some regions offer multiple environments of a kind and you must explicitly select the target environment in which
  # the instance shall be created using the parameter landscape label. 
  # available environments can be looked up using the btp_subaccount_environments datasource
  parameters = jsonencode({
    instance_name = btp_subaccount.project.subdomain
  })
  timeouts = {
    create = "1h"
    update = "35m"
    delete = "30m"
  }
}

######################################################################
# Add "sleep" resource for generic purposes
######################################################################
resource "time_sleep" "wait_a_few_seconds" {
  create_duration = "30s"
}

######################################################################
# Create Cloudfoundry space
######################################################################

output "org_id" {
  value = btp_subaccount_environment_instance.cloudfoundry.platform_id

}

resource "cloudfoundry_org_role" "my_role" {
  for_each = var.cf_org_user
  username = each.value
  type     = "organization_manager"
  org      = btp_subaccount_environment_instance.cloudfoundry.platform_id
  origin   = var.origin
}

# Create Spaces
resource "cloudfoundry_space" "team_spaces" {
  count      = 10
  depends_on = [cloudfoundry_org_role.my_role]
  name       = format("PES%d", count.index + 1)
  org        = btp_subaccount_environment_instance.cloudfoundry.platform_id
}

######################################################################
# Add entitlement for BAS, Subscribe BAS and add roles
######################################################################
resource "btp_subaccount_entitlement" "bas" {
  subaccount_id = btp_subaccount.project.id
  service_name  = "sapappstudio"
  plan_name     = var.bas_plan_name
}
resource "btp_subaccount_subscription" "bas-subscribe" {
  subaccount_id = btp_subaccount.project.id
  app_name      = "sapappstudio"
  plan_name     = var.bas_plan_name
  depends_on    = [btp_subaccount_entitlement.bas]
}
resource "btp_subaccount_role_collection_assignment" "Business_Application_Studio_Administrator" {
  subaccount_id        = btp_subaccount.project.id
  role_collection_name = "Business_Application_Studio_Administrator"
  user_name            = data.btp_whoami.me.email
  depends_on           = [btp_subaccount_subscription.bas-subscribe]
}


resource "btp_subaccount_role_collection_assignment" "Business_Application_Studio_Developer" {
  subaccount_id        = btp_subaccount.project.id
  role_collection_name = "Business_Application_Studio_Developer"
  user_name            = data.btp_whoami.me.email
  depends_on           = [btp_subaccount_subscription.bas-subscribe]
}

#############
#CLS
#############

resource "btp_subaccount_entitlement" "cls" {
  subaccount_id = btp_subaccount.project.id
  service_name      = "cloud-logging"
  plan_name         = var.cls_plan_name
  amount             = 1
}
