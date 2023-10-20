package res

#aws_api_gateway_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_api_key")
	arn?:               string
	created_date?:      string
	customer_id?:       string
	description?:       string
	enabled?:           bool
	id?:                string
	last_updated_date?: string
	name:               string
	tags?: [string]: string
	tags_all?: [string]: string
	value?: string
}
