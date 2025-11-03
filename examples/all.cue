package examples

// Export this to have a final .tf.json file:
// 		cue export -e allInfra > infra.tf.json
allInfra: {
	// Compose AWS and Google provider definitions.
	terraform: required_providers: {
		aws:    _
		google: _
	}

	awsServer
	googleServer

	// Also, configure an extra AWS provider that targets another region and duplicate EC2 server there.
	terraform: required_providers: awsEU: terraform.required_providers.aws
	provider: awsEU: region:              "eu-central-1"
	resource: {
		awsEU_instance: my_server_in_europe: resource.aws_instance.my_server
	}
}
