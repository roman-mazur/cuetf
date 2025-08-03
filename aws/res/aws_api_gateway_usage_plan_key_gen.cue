package res

#aws_api_gateway_usage_plan_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_usage_plan_key")
	close({
		id?:            string
		key_id!:        string
		key_type!:      string
		name?:          string
		region?:        string
		usage_plan_id!: string
		value?:         string
	})
}
