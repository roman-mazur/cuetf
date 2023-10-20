package res

#aws_api_gateway_usage_plan_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_usage_plan_key")
	id?:           string
	key_id:        string
	key_type:      string
	name?:         string
	usage_plan_id: string
	value?:        string
}
