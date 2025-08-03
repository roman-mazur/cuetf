package res

#aws_wafv2_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_api_key")
	close({
		api_key?: string
		region?:  string
		scope!:   string
		token_domains!: [...string]
	})
}
