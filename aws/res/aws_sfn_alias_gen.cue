package res

#aws_sfn_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_alias")
	close({
		arn?:           string
		creation_date?: string
		routing_configuration?: matchN(1, [#routing_configuration, [_, ...] & [...#routing_configuration]])
		timeouts?:    #timeouts
		description?: string
		id?:          string
		name!:        string
		region?:      string
	})

	#routing_configuration: close({
		state_machine_version_arn!: string
		weight!:                    number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
