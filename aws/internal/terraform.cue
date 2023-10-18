package internal

import (
	"rmazur.io/cuetf/internal/tf"
	"rmazur.io/cuetf/aws/internal/schema"
)

aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"]

output: {
	provider:  (tf.#TransformToCue & {input: provider: aws.provider}).results
	resources: (tf.#TransformToCue & {
		input: aws_ec2_host: aws.resource_schemas.aws_ec2_host
	}).results
}
