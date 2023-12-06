terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    access_key = "AKIAT5FWT32M4HNZ5EAV"
    secret_key = "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"
    region = var.aws_region 
}