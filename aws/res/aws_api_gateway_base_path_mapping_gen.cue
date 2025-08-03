package res

#aws_api_gateway_base_path_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_base_path_mapping")
	close({
		api_id!:         string
		base_path?:      string
		domain_name!:    string
		domain_name_id?: string
		id?:             string
		region?:         string
		stage_name?:     string
	})
}
