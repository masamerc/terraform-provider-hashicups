terraform {
  required_providers {
    hashicups = {
      source = "hashicorp.com/edu/hashicups" // replaced with local path via dev_overrides in .terraformrc
    }
  }
}

provider "hashicups" {}

data "hachicups_coffees" "example" {}
