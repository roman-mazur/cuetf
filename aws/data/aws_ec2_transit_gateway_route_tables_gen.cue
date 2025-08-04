package data

#aws_ec2_transit_gateway_route_tables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_tables")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		ids?: [...string]
		region?: string
		tags?: [string]: string
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
