package res

#aws_ec2_default_credit_specification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_default_credit_specification")
	close({
		cpu_credits!:     string
		instance_family!: string
		region?:          string
		timeouts?:        #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
