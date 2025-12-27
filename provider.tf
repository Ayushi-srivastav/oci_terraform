provider "oci" {
  # These variables are defined in variables.tf and terraform.tfvars
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa2n7ydiz5kvwsq4zuci4pm4uqbtyuye4zvfuqrapplp4lmdweqpcq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaav4xddiz5dvmvof2r3u64dztjezstrd7dz5fubxi2uxfpe25phv3q"
  fingerprint      = "e3:ff:01:c9:40:f1:08:39:75:c3:6f:1c:bf:0e:20:e6"
  private_key_path = "D:/Ashi OCI/Cloud/key/pvt.pem"
  region           = "ap-mumbai-1"
}