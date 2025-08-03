package data

#aws_ec2_instance_type_offering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_type_offering")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:      #timeouts
		instance_type?: string
		location_type?: string
		preferred_instance_types?: [...string]
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
