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
  access_key = "ASIA53AE462VHC5HE5XB"
  secret_key = "FvipZglu7XaVmZBQhvbbsMevDhDtST2q0VnTpDdo"
  token = "FwoGZXIvYXdzEDcaDG6/EuggNBZQbHshqiKuAUz6sPkxaWQDDDfaPKztmZ/C4KushJvSLi8UOmNgbYJC8hk0cUpxMjfqv8Rb3w3AbPDRpiAufNa9qIG10JKFGswWneX20FjqjpOKlifZ86aKxr/MJxivuqsQ1oG5+yp68vhYdblbij7o1JZGFZyd8PbvmTEpr2j2puGV7bNHt33ayQgNKn33jxvPCn4S4uMAK63zDyKQqJdGaeAynrY70miLRnLRFqQETmbJIBz/4ij9+feZBjItlahFWgd8bNdVNMtnLpjTcW5LvUKP6ETUTztY2T4G1V38uyIhjv+7gfVN7vKg"
  region = "us-east-1"
}
