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
  access_key = "ASIAXSQVKDNFVI3UCECR"
  secret_key = "sAtAvXj6QSYzfyGqVle7QyDl/My6iUe2pFLRiDep"
  token = "FwoGZXIvYXdzEDkaDBZnMxGy1CUeCk8Y+yKuAYyaUSw46c/XwHoR4ebRjkWsphDOTKNCAt3dmAqs9plO5LyVy2P/1K4IQptQVKNZNkqVqCVO5fG0pLiYYTtU/ZdM+IS+6PLN+Y5Gy7PjHlkfrIo9ctpEEzhF6nvzjCF4jNlEdne0o5L+rw0OJW0X48Tpr3LCQBSrFR6TADOMAcz15Dqx8MNjqnQeq03yR0UX1QyssjyFu5hlouGP7j95vsuz2686+tQsSm5Bz3KGRyjsq/iZBjItahWvsRjFtmVVoM06pdLWKg1G/4Rx5gMyztyzxSWhxN4es+UjSdZb+SD4UZfT"
  region = "us-east-1"
}
