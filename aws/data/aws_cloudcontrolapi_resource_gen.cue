package data

#aws_cloudcontrolapi_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudcontrolapi_resource")
	id?:              string
	identifier:       string
	properties?:      string
	role_arn?:        string
	type_name:        string
	type_version_id?: string
}
