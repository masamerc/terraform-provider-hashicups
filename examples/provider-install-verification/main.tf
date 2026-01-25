terraform {
  required_providers {
    hashicups = {
      source = "hashicorp.com/edu/hashicups" # replaced with local go binary specified in dev_overrides in .terraformrc
    }
  }
}

provider "hashicups" {}

data "hashicups_coffees" "example" {}
