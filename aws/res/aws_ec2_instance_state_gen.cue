package res

#aws_ec2_instance_state: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_instance_state")
	force?:       bool
	id?:          string
	instance_id!: string
	state!:       string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
