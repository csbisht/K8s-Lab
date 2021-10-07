variable "compartment_id" {}
variable "instance_availability_domain" {}
variable "shape_id" {}
variable "image_id" {}
variable "subnet_id" {}
variable "ssh_public_key" {}
variable "assign_public_ip" {}
variable "ssh_private_key" {}
variable "display_name_cluster3_node" {}
variable "cluster3_node_count" {}

resource "oci_core_instance" "CreateInstance_cluster3_node" {
  count = "${var.cluster3_node_count}"
  availability_domain = var.instance_availability_domain
  compartment_id      = var.compartment_id
  shape               = var.shape_id
  source_details {
    source_id   = var.image_id
    source_type = "image"
  }

    # Optional
    display_name = "${var.display_name_cluster3_node}${count.index}"
    create_vnic_details {
        subnet_id = "${var.subnet_id}"
    }
  metadata = {
    ssh_authorized_keys = file("${var.ssh_public_key}")
  }
   preserve_boot_volume = false
  provisioner "file" {
    source      = "./module-instance-cluster3/worker-node/scripts/"
    destination = "/tmp/"

    connection {
      type        = "ssh"
      host        = "${self.public_ip}"
      user        = "ubuntu"
      private_key = "${file(var.ssh_private_key)}"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/*.sh",
      "sudo /tmp/load_module_br_netfilter.sh",
      "sudo /tmp/install_curl_https_certs_keyring.sh",
      "sudo /tmp/install_kubeadm_kubelet_kubectl.sh",
      "sudo /tmp/install_container_runtime.sh",
      "sudo /tmp/install_docker.sh",
    ]
    connection {
      type        = "ssh"
      host        = "${self.public_ip}"
      user        = "ubuntu"
      private_key = "${file(var.ssh_private_key)}"
    }
  }
}

