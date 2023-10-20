package data

#aws_api_gateway_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_export")
	accepts?:             string
	body?:                string
	content_disposition?: string
	content_type?:        string
	export_type:          string
	id?:                  string
	parameters?: [string]: string
	rest_api_id: string
	stage_name:  string
}
