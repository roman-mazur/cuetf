package examples

import "github.com/roman-mazur/cuetf/aws"

// Export this to have a final .tf.json file:
// 		cue export -e allInfra > infra.tf.json
//    terraform plan
allInfra: {
	// Compose AWS and Google provider definitions.
	googleServer
	aws.#Terraform & {
		resource: awsServer.resource // Take resources only for AWS, as we change provider configuration.
	}
	provider: aws: [
		{region: "us-east-1"},
		...,
	]

	// Also, configure an extra AWS provider that targets another region and duplicate EC2 server there.
	terraform: required_providers: aws: configuration_aliases: ["aws.eu"]
	provider: aws: [_, {alias: "eu", region: "eu-central-1"}]
	resource: {
		aws_instance: my_server_in_europe: resource.aws_instance.my_server & {provider: "aws.eu"}

		// This will fail to validate.
		// aws_whatever: kk: foo: "bar"
	}
}
