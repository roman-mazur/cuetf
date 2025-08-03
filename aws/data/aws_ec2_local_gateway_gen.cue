package data

#aws_ec2_local_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_local_gateway")
	close({
		id?:          string
		outpost_arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		owner_id?: string
		region?:   string
		state?:    string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
