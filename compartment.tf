# compartment.tf
resource "oci_identity_compartment" "Flip_compartment" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaa2n7ydiz5kvwsq4zuci4pm4uqbtyuye4zvfuqrapplp4lmdweqpcq" # parent OCID (tenancy or another compartment)
  name           = "Flip_compartment"                                                                # unique name within the parent
  description    = "Compartment for Flip retail project"


  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}

# create subcompartment flipcart network
resource "oci_identity_compartment" "Flip_network_compartment" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaqhgpwayiwdq4phxrbdsdxofdjfjbzlg645px4ajcdfu3swoiig7a" # parent OCID (tenancy or another compartment)
  name           = "Flip_network_comp"                                                                   # unique name within the parent
  description    = "Compartment for Flip retail project"

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}

# create subcompartment flipcart computeandstorage compartment
resource "oci_identity_compartment" "Flip_computeandstorage_compartment" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaqhgpwayiwdq4phxrbdsdxofdjfjbzlg645px4ajcdfu3swoiig7a" # parent OCID (tenancy or another compartment)
  name           = "Flip_computeandstorage_compartment"                                                  # unique name within the parent
  description    = "Compartment for Flip retail project"

  defined_tags = {
    "FLIPKART-TAGS.Environment" = "Prod"
  }
}