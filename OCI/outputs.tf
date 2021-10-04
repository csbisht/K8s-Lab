output "instance_jump_name" {
  value = "${module.CreateInstances_jump.instance_jump_name}"
}
output "instance_OCID_jump" {
  value = "${module.CreateInstances_jump.instance_OCID_jump}"
}
output "instance_jump_public_ip" {
     value = "${module.CreateInstances_jump.instance_jump_public_ip}"
}
output "instance_jump_private_ip" {
     value = "${module.CreateInstances_jump.instance_jump_private_ip}"
}

output "instance_cluster1_master_name" {
  value = "${module.CreateInstances_cluster1_master.instance_cluster1_master_name}"
}
output "instance_OCID_cluster1_master" {
  value = "${module.CreateInstances_cluster1_master.instance_OCID_cluster1_master}"
}
output "instance_cluster1_master_public_ip" {
     value = "${module.CreateInstances_cluster1_master.instance_cluster1_master_public_ip}"
}
output "instance_cluster1_master_private_ip" {
     value = "${module.CreateInstances_cluster1_master.instance_cluster1_master_private_ip}"
}

