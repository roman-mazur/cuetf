package jsonschema

import "rmazur.io/cuetf/aws/internal/schema"

_aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"]

samples: aws: [name=string]: #SchemaTransform & {
	#name:  name
	#block: _aws.resource_schemas[name].block
}

samples: aws: aws_instance:        _
samples: aws: aws_acm_certificate: _

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
"""
