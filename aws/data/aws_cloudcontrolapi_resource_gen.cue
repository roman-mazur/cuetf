package data

#aws_cloudcontrolapi_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudcontrolapi_resource")
	close({
		id?:              string
		identifier!:      string
		properties?:      string
		region?:          string
		role_arn?:        string
		type_name!:       string
		type_version_id?: string
	})
}
