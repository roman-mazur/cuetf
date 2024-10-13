package res

#aws_controltower_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_controltower_control")
	arn?:                string
	control_identifier!: string
	id?:                 string
	target_identifier!:  string
	parameters?: #parameters | [...#parameters]
	timeouts?: #timeouts

	#parameters: {
		key!:   string
		value!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
