package data

#aws_ec2_instance_type_offerings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_type_offerings")
	close({
		id?: string
		instance_types?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:      #timeouts
		location_type?: string
		location_types?: [...string]
		locations?: [...string]
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
