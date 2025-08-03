package data

#aws_ec2_transit_gateway_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:                        #timeouts
		default_association_route_table?: bool
		default_propagation_route_table?: bool
		id?:                              string
		region?:                          string
		tags?: [string]: string
		transit_gateway_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
