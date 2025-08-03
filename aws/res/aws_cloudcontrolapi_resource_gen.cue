package res

#aws_cloudcontrolapi_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudcontrolapi_resource")
	close({
		desired_state!:   string
		timeouts?:        #timeouts
		id?:              string
		properties?:      string
		region?:          string
		role_arn?:        string
		schema?:          string
		type_name!:       string
		type_version_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
