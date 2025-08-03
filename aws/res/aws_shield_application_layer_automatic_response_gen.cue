package res

#aws_shield_application_layer_automatic_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_application_layer_automatic_response")
	close({
		action!:       string
		resource_arn!: string
		timeouts?:     #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
