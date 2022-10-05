# Terraform Version Used while testing
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}


#Access & secret keys
provider "aws" {
  access_key = "ASIARJTG7GGYCJU2OMXM"
  secret_key = "+RIaI0UJY9WeInDj93Yb3A7XptHynHfgJ0bhw9t4"
  token = "FwoGZXIvYXdzECMaDDpFCHc16B11m7gm6CKuARcidKEJnYZKHlp2KZPhKOTqbxarhebUl3TLf0fBvEtbD3Zo8luW1YcApCfARPqwjaSmNsCFx/PZRkE1xkxq9Nnoqd9IR9MGgJj7my7y+rBHKRmf2WsJqTIsmQ+rQbNC3+SoeXXPZqBSd4Y4KOq9bkQg6tJOBBkChaa9PdRCz2mGbis74kMdrUuIkbnS7L8uZb9RRSm2OPpJ+9FWPQePjsDgBCArwij7Rh1clwQYTiipvPOZBjItqSSkbn9R6MkbFX9FpwJPpwvNrXGIhOrD2HvRBfAHw+CBK5SLk/fpe1rzD5nF"
  region = "us-east-1"
}
