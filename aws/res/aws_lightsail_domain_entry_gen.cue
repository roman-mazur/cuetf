package res

#aws_lightsail_domain_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_domain_entry")
	close({
		domain_name!: string
		id?:          string
		is_alias?:    bool
		name!:        string
		region?:      string
		target!:      string
		type!:        string
	})
}
