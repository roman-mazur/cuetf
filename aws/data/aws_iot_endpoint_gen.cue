package data

#aws_iot_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_endpoint")
	endpoint_address?: string
	endpoint_type?:    string
	id?:               string
}
