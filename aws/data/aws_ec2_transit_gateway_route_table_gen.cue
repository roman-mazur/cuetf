package data

#aws_ec2_transit_gateway_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_route_table")
	arn?:                             string
	default_association_route_table?: bool
	default_propagation_route_table?: bool
	id?:                              string
	tags?: [string]: string
	transit_gateway_id?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
