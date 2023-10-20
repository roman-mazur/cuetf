package data

#aws_api_gateway_sdk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_sdk")
	body?:                string
	content_disposition?: string
	content_type?:        string
	id?:                  string
	parameters?: [string]: string
	rest_api_id: string
	sdk_type:    string
	stage_name:  string
}
