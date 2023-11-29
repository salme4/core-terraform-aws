#
# This file has been generated by Cycloid, please DO NOT modify.
# Any manual modifications done to this file, WILL be lost on the
# next project edition via the forms.
#
# Please note that comments in sample files will have been dropped
# due to some limitations upon files' generation.
#
# Any extra variables not found in the original file have been written down below in the comment.
#

module "nexus" {
  source = "./module-nexus"

  customer = var.customer
  env      = var.env
  extra_tags = {
    demo                 = true
    monitoring_discovery = false
  }
  keypair_public       = var.keypair_public
  nexus_admin_password = "nexusAdmin"
  nexus_port           = "8081"
  project              = var.project
  vm_disk_size         = 20
  vm_instance_type     = "t3a.medium"
}

