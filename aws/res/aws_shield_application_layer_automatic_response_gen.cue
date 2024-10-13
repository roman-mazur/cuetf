package res

#aws_shield_application_layer_automatic_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_shield_application_layer_automatic_response")
	action!:       string
	id?:           string
	resource_arn!: string
	timeouts?:     #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
