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
  access_key = "ASIARJTG7GGYFU7TPGR4"
  secret_key = "0XCEZKfIFKmKkdKolbJsYaTz8GE/i51ZThaM6jBE"
  token = "FwoGZXIvYXdzEOv//////////wEaDM9Jne+CxQ433HKEdyKuAZWVYiZkn/y/YbYuXNkXSMCz6otGv6gH+LzH+cdIYyyDNIXb+B8uB2NBBmqUiOJ/qiSCwgj/GzXjiH6+LmJNzuX6/TmIvF6liyb0e25wb/TV6NEaDscMtMCgIhxVyWjtsfYjQmTnpdURQLsxVBll0PkOEOevlGw9rkpzyp64RwmyhWnof7JOCRrVS7i5B9EUZm7KgtlXiDU+w9knWK5fFz3pVATn5S/8eXAhdUYY3SjpjOeZBjItTo8O+TtEwBw4bj+UEsI+9eyjj8EK/sW9W2NY6sw351/4ng4azHeEEqzcFW2H"
  region = "us-east-1"
}
