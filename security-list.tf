# security list for public subnet
resource "oci_core_security_list" "app_sl" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3xzm37emmmjjamq5uo25ohrfdlytd6cb2qlhaksc65temewbdipa"
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaaugo2acaayhrrey236o2d3flcrkgnc7thl7jvdjcnixhos2iy3ava"
  display_name   = "app_sl"

  ingress_security_rules {
    protocol    = "6"   # 6 is the protocol number for TCP
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    description = "Allow SSH from all sources"
    tcp_options {
      min = 22
      max = 22
    }
  }

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
    description = "Allow all outbound traffic"
  }

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}