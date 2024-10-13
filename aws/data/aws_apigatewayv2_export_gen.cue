package data

#aws_apigatewayv2_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_export")
	api_id!:             string
	body?:               string
	export_version?:     string
	id?:                 string
	include_extensions?: bool
	output_type!:        string
	specification!:      string
	stage_name?:         string
}
