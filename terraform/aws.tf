provider "aws" {
    region = "ap-northeast-1"
}

module "aws" {
    source = "./aws"
}
