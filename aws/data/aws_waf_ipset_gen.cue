package data

#aws_waf_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_waf_ipset")
	close({
		id?:   string
		name!: string
	})
}
