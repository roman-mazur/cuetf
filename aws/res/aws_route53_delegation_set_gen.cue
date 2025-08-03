package res

#aws_route53_delegation_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_delegation_set")
	close({
		arn?: string
		id?:  string
		name_servers?: [...string]
		reference_name?: string
	})
}
