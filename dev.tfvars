cluster_name                   = "bosez-20240603"
openshift_version              = "4.15.10" # For available stable versions: rosa list versions --channel-group stable
upgrade_acknowledgements_for   = "4.15"
cloud_region                   = "us-east-2"
admin_username                 = "bolauder"
account_role_prefix            = "bosez-20240603"
operator_role_prefix           = "bosez-20240603"
vpc_cidr                       = "10.0.0.0/16"

## For 3 availability zones
multi_az                       = true
availability_zones             = ["us-east-2a", "us-east-2b", "us-east-2c"]
aws_subnet_ids = ["subnet-05b72d9316b55f506", "subnet-0d7e932ac2481ad63", "subnet-0eafd512ecf6ddc8a", "subnet-0c1e91699cfa65208", "subnet-0c815b675abb025e3", "subnet-0933c0eac32623adb"]
replicas                       = 3

## For 1 availability zone
# multi_az                       = false
# availability_zones             = ["us-east-2a"]
# aws_subnet_ids                 = <values>
# replicas                       = 2


# not sure if I need this
bucket                         = "rosa-tfstate-20240603"
dynamodb_table                 = "rosa-tfstate-20240603"
dynamoDB_table                 = "rosa-tfstate-20240603"
key                            = "terraform.tfstate"
