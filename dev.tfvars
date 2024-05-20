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
aws_subnet_ids = ["subnet-03d82c68ffcd98554", "subnet-04e8f19273e9ea1ac", "subnet-0d544a3280f09f018", "subnet-0f34f49ae04c0e0ff", "subnet-0f753eef952136681", "subnet-0d6ffdff5a40a3ba9"]
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