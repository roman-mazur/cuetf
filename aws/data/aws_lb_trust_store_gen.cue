package data

#aws_lb_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_trust_store")
	arn?:  string
	id?:   string
	name?: string
}
