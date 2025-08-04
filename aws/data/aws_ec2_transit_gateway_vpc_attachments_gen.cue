package data

#aws_ec2_transit_gateway_vpc_attachments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_vpc_attachments")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		id?:       string
		ids?: [...string]
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
