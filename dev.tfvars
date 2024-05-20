cluster_name                   = "bosez-gdabs4"
openshift_version              = "4.15.10" # For available stable versions: rosa list versions --channel-group stable
upgrade_acknowledgements_for   = "4.15"
cloud_region                   = "us-east-2"
admin_username                 = "bolauder"
account_role_prefix            = "bosez-1234567"
operator_role_prefix           = "bosez-1234567"
vpc_cidr                       = "10.0.0.0/16"

## For 3 availability zones
multi_az                       = true
availability_zones             = ["us-east-2a", "us-east-2b", "us-east-2c"]
aws_subnet_ids = ["subnet-0b4a253886bae4bfb", "subnet-022ce6b4fe2f26bc8", "subnet-05cce0ce5c828170d", "subnet-084d2eba669117980", "subnet-08ae1e29782cfb5f4", "subnet-096f39d7203b85557"]
replicas                       = 3

## For 1 availability zone
# multi_az                       = false
# availability_zones             = ["us-east-2a"]
# aws_subnet_ids                 = <values>
# replicas                       = 2


# not sure if I need this
bucket                         = "rosa-tfstate-20240517-2"
dynamodb_table                 = "rosa-tfstate-20240517-2"
dynamoDB_table                 = "rosa-tfstate-20240517-2"
key                            = "terraform.tfstate"