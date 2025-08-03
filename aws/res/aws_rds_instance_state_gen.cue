package res

#aws_rds_instance_state: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_instance_state")
	close({
		identifier!: string
		region?:     string
		state!:      string
		timeouts?:   #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
