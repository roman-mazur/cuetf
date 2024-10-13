package res

#aws_cloudcontrolapi_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudcontrolapi_resource")
	desired_state!:   string
	id?:              string
	properties?:      string
	role_arn?:        string
	schema?:          string
	type_name!:       string
	type_version_id?: string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
