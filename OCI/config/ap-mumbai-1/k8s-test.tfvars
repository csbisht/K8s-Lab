tenancy_ocid       = "ocid1.tenancy.oc1..aaaaaaaa6xqoegpewpe3hwmborqyb6abuu57yxmwwus3dmsghbau6w3e6tvq"
user_ocid          = "ocid1.user.oc1..aaaaaaaabmq2yv2dkn47tik4uj5rtix42ru4ast7eqbqdmkm2rbnineo7xza"
private_key_path   = "~/K8s-Lab/OCI/oci_key/oci_api_key.pem"
fingerprint        = "aa:04:45:d5:5e:dd:ea:17:84:80:b4:fd:b6:6e:a2:0a"
region             = "ap-mumbai-1"
private_security_list_name = "K8s-Lab-SL"

#####set worker node count here###its already set default value = 1 in variable.tf, if you wants to update/change the value uncomment to below####
#cluster1_node_count = "1"
#cluster2_node_count = "1"
#cluster3_node_count = "1"

###set ssh key path here to connect your VM instances
ssh_public_key            = "~/K8s-Lab/OCI/oci_key/K8s_test.pub"
ssh_private_key           = "~/K8s-Lab/OCI/oci_key/K8s_test"
