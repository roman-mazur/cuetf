package data

#aws_ec2_instance_type_offering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_type_offering")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?:            string
		instance_type?: string
		location_type?: string
		preferred_instance_types?: [...string]
		region?:   string
		timeouts?: #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
