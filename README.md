<p align="center">
    <a href="https://github.com/csbisht/K8s-Lab">
        <img src="https://github.com/csbisht/K8s-Lab/blob/main/images/K8_Handson_Lab.png" height="300" alt="K8s Lab">
    </a>
</p>

## **K8s Hands on Lab**
 
In this K8s Hands on Lab, you can setup kubernetes lab environment on Oracle Cloud (OCI) and you can practice kubernetes questions to prepare CKA exam.
## **Prerequisites**
You have to create SSH key to login to compute instance on OCI (refer this link- [SSH Key OCI](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/tf-compute/01-summary.htm)) and also you need to Generating an API Signing Key (its optional, refer this link - [API Key OCI](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#four)). All private and public keys you need to place inside K8s-Lab/OCI/oci_key as below file name:-
```
SSH private key file:- K8s_test

SSH public key file:- K8s_test.pub

API private key file:- oci_api_key.pem
```
**Note:-** You have to add API finger print to your OCI **Identity>>Users>>User Details>>API Keys**. Else you can create API key and fingerprint from the OCI console.

**There is already available default ssh key and api key in K8s-Lab/OCI/oci_key you can use that or you can create your own keys.**

## **Steps**
Login your [OCI](https://oraclecloud.com) account and click to Cloud Shell. We using cloud shell because it has pre-installed Terraform and its dependencies.
