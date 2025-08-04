package res

#aws_oam_sink_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_oam_sink_policy")
	close({
		timeouts?:        #timeouts
		arn?:             string
		id?:              string
		policy!:          string
		region?:          string
		sink_id?:         string
		sink_identifier!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
