package jsonschema

import "rmazur.io/cuetf/aws/internal/schema"

_aws: schema.provider_schemas["registry.terraform.io/hashicorp/aws"]

samples: [name=string]: #schemaTransform & {
	#name:  name
	#block: _aws.resource_schemas[name].block
}

samples: aws_instance:        _
samples: aws_acm_certificate: _
