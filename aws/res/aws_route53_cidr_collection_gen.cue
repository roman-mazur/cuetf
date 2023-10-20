package res

#aws_route53_cidr_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_cidr_collection")
	arn?:     string
	id?:      string
	name:     string
	version?: number
}
