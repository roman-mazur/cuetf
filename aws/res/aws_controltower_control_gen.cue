package res

#aws_controltower_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_controltower_control")
	control_identifier: string
	id?:                string
	target_identifier:  string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
