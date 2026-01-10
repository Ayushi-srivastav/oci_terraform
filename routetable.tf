resource "oci_core_route_table" "app_rt" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3xzm37emmmjjamq5uo25ohrfdlytd6cb2qlhaksc65temewbdipa"
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaaugo2acaayhrrey236o2d3flcrkgnc7thl7jvdjcnixhos2iy3ava"
  display_name   = "app_rt"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = "ocid1.internetgateway.oc1.iad.aaaaaaaa5kgrg5ypkvbzg6dgi3qb5ikfzixgaznrsgklbvejgo26mokbyqbq"
    description       = "Route all internet traffic to Internet Gateway"
  }

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}