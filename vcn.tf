# vcn.tf
resource "oci_core_virtual_network" "vcn" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3xzm37emmmjjamq5uo25ohrfdlytd6cb2qlhaksc65temewbdipa"
  display_name   = "flip_vcn"
  cidr_block     = "10.0.2.0/24"
  dns_label      = "flipvcn"

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"  
  }
}
