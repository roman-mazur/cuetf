package data

#aws_ec2_transit_gateway_route_table_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table_routes")
	close({
		filter?: matchN(1, [#filter, [_, ...] & [...#filter]])
		id?:     string
		region?: string
		routes?: [...close({
			destination_cidr_block?:                      string
			prefix_list_id?:                              string
			state?:                                       string
			transit_gateway_route_table_announcement_id?: string
			type?:                                        string
		})]
		transit_gateway_route_table_id!: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
