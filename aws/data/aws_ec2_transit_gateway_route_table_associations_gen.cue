package data

#aws_ec2_transit_gateway_route_table_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table_associations")
	close({
		id?: string
		ids?: [...string]
		region?:                         string
		transit_gateway_route_table_id!: string
		filter?: matchN(1, [#filter, [...#filter]])
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
