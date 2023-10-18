package test

import (
	"rmazur.io/cuetf"
	"rmazur.io/cuetf/aws/internal/schemaaws"
)

aws: schemaaws.provider_schemas["registry.terraform.io/hashicorp/aws"]

cuetf.#TestSuite
#providerSchema: aws
#tests: [
	testAcmCert,
]

#awsResourceSample: {
	#name: string
	cuetf.#tBlockAttr & {input: aws.resource_schemas["aws_\(#name)"].block, prefix: #name}
}
