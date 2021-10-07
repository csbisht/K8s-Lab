# Outputs for compute instance display name
output "instance_cluster3_node_name" {
  value = oci_core_instance.CreateInstance_cluster3_node.*.display_name
}

# Outputs for compute instance OCID
output "instance_OCID_cluster3_node" {
  value = oci_core_instance.CreateInstance_cluster3_node.*.id
}

# Outputs for compute instance public ip
output "instance_cluster3_node_public_ip" {
  value = oci_core_instance.CreateInstance_cluster3_node.*.public_ip
}

# Outputs for compute instance private ip
output "instance_cluster3_node_private_ip" {
  value = oci_core_instance.CreateInstance_cluster3_node.*.private_ip
}
