package res

#aws_controltower_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_controltower_control")
	close({
		parameters?: matchN(1, [#parameters, [...#parameters]])
		arn?:                string
		control_identifier!: string
		id?:                 string
		region?:             string
		target_identifier!:  string
		timeouts?:           #timeouts
	})

	#parameters: close({
		key!:   string
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
