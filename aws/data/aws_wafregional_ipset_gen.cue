package data

#aws_wafregional_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_ipset")
	close({
		id?:     string
		name!:   string
		region?: string
	})
}
