# flip-vcn private App_subnet

resource "oci_core_subnet" "App_private_subnet" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3xzm37emmmjjamq5uo25ohrfdlytd6cb2qlhaksc65temewbdipa"
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaaugo2acaayhrrey236o2d3flcrkgnc7thl7jvdjcnixhos2iy3ava"
  display_name   = "App-private-subnet"
  cidr_block     = "10.0.2.0/29"
  dns_label      = "Apppvtsubnet"

  route_table_id    = oci_core_route_table.app_rt.id
  security_list_ids = [oci_core_security_list.app_sl.id]

  prohibit_internet_ingress = true

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}