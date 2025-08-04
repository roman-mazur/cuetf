package res

#aws_api_gateway_rest_api_put: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_rest_api_put")
	close({
		timeouts?:         #timeouts
		body!:             string
		fail_on_warnings?: bool
		parameters?: [string]: string
		region?:      string
		rest_api_id!: string
		triggers?: [string]: string
	})

	#timeouts: close({
		create?: string
	})
}
