package res

#aws_api_gateway_base_path_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_base_path_mapping")
	api_id!:      string
	base_path?:   string
	domain_name!: string
	id?:          string
	stage_name?:  string
}
