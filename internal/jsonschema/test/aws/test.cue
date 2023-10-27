package aws

import (
	"rmazur.io/cuetf/internal/jsonschema"
	"rmazur.io/cuetf/aws/internal/schema"
)

_aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"].resource_schemas

jsonschema.#ProviderTest

importSamples: aws: [name=string]: {
	#name:  name
	#block: _aws[name].block
}
importSamples: aws: aws_instance:                          _
importSamples: aws: aws_acm_certificate:                   _
importSamples: aws: aws_security_group:                    _
importSamples: aws: aws_appintegrations_event_integration: _

examplesCode: """
	package samples
	
	aws_instance: #aws_instance & {
		ami: "ami-123"
		instance_type: "t2.micro"
		availability_zone: "us-east-1a"
	}
	
	aws_acm_certificate: #aws_acm_certificate & {
		certificate_body: "something"
	}
	
	aws_security_group: #aws_security_group & {}
	
	aws_appintegrations_event_integration: #aws_appintegrations_event_integration & {}
	"""

debug: input: _aws.resource_schemas.aws_appintegrations_event_integration.block
debug: output: jsonschema.#blockTransform & {#block: debug}
