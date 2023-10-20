package res

#aws_route53_delegation_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_delegation_set")
	arn?: string
	id?:  string
	name_servers?: [...string]
	reference_name?: string
}
