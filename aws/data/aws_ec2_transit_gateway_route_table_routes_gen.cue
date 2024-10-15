package data

#aws_ec2_transit_gateway_route_table_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table_routes")
	id?: string
	routes?: [...{
		destination_cidr_block?:                      string
		prefix_list_id?:                              string
		state?:                                       string
		transit_gateway_route_table_announcement_id?: string
		type?:                                        string
	}]
	transit_gateway_route_table_id!: string
	filter?: #filter | [_, ...] & [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
