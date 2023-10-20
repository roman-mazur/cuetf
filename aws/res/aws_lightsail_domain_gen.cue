package res

#aws_lightsail_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_domain")
	arn?:        string
	domain_name: string
	id?:         string
}
