package res

#aws_ec2_instance_state: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_state")
	close({
		force?:       bool
		timeouts?:    #timeouts
		id?:          string
		instance_id!: string
		region?:      string
		state!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
