package test

import (
	"rmazur.io/cuetf"
	"rmazur.io/cuetf/aws/internal/schemaaws"
)

_aws: schemaaws.provider_schemas["registry.terraform.io/hashicorp/aws"]

cuetf.#TestSuite
#providerSchema: _aws

#tests: [
	testAcmCert,
	testEc2Host,
]

#awsResourceSample: {
	#name: string
	cuetf.#tBlockAttr & {input: _aws.resource_schemas["aws_\(#name)"].block, prefix: #name}
}
