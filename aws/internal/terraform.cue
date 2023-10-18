package internal

import (
	"strings"

	"rmazur.io/cuetf/internal/tf"
	"rmazur.io/cuetf/aws/internal/schema"
)

aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"]

output: {
	// Provider schema in the root.
	root:  (tf.#TransformToCue & {input: provider: aws.provider}).results

	// Terraform resources in a dedicated folder.
	resources: (tf.#TransformToCue & {
		input: aws_ec2_host: aws.resource_schemas.aws_ec2_host
		input: aws_instance: aws.resource_schemas.aws_instance
	}).results

	// Resources map in the root.
	_resMap: strings.Join([for name, _ in resources { "#resources: \(name): r.#\(name)" }], "\n")
	root: res: """
	import r "rmazur.io/cuetf/aws/resources"

	\(_resMap)
	"""
}
