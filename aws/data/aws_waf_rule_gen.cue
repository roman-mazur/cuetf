package data

#aws_waf_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_rule")
	close({
		id?:   string
		name!: string
	})
}
