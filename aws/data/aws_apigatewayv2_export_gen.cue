package data

#aws_apigatewayv2_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_export")
	close({
		api_id!:             string
		body?:               string
		export_version?:     string
		id?:                 string
		include_extensions?: bool
		output_type!:        string
		region?:             string
		specification!:      string
		stage_name?:         string
	})
}
