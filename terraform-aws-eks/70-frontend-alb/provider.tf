terraform {
    required_providers {
        aws  = {
            source = "hashicorp/aws" 
            version = "5.98.0"
        }
    }
    backend "s3" {
        bucket  = "90-remote-state-dev" 
        key     = "robohsop-dev-ingress-alb" 
        region  = "us-east-1" 
        encrypt = true
        use_lockfile = true 
    }
}

provider "aws" {
    # configuration options 
    region = "us-east-1" 
}

