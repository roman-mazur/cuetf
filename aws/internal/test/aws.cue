package test

import (
	"rmazur.io/cuetf/internal/tf"
	"rmazur.io/cuetf/aws/internal/schema"
)

_aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"]

tf.#TestSuite
#providerSchema: _aws

#tests: [
	testAcmCert,
	testAlbListener,
	testInstance,
]

#awsResourceSample: {
	#name: string
	tf.#tBlockAttr & {input: _aws.resource_schemas["aws_\(#name)"].block, prefix: #name}
}
