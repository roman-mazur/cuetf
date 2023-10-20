package examples

import "rmazur.io/cuetf/aws"

awsServer: {
	aws.#Terraform & {
		provider: aws: region: "us-east-1"

		resource: {
			aws_instance: my_server: {
				ami:           "some-ami"
				instance_type: "t2.micro"
			}
		}
	}

	// Adding other resources.
	resource: null_resource: a_thing: {}
}
