resource "oci_core_internet_gateway" "flip_internet_gateway" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3xzm37emmmjjamq5uo25ohrfdlytd6cb2qlhaksc65temewbdipa" #flip-network-compartment OCID
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaaugo2acaayhrrey236o2d3flcrkgnc7thl7jvdjcnixhos2iy3ava"      #flip-vcn OCID
  display_name   = "flip-internet-gateway"                                                               #Internet Gateway name for flip VCN
  enabled        = true

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}