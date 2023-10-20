package res

#aws_lightsail_domain_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_domain_entry")
	domain_name: string
	id?:         string
	is_alias?:   bool
	name:        string
	target:      string
	type:        string
}
