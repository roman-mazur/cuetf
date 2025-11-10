package data

#aws_ec2_transit_gateway_route_table_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table_routes")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		routes?: [...close({
			destination_cidr_block?:                      string
			prefix_list_id?:                              string
			state?:                                       string
			transit_gateway_route_table_announcement_id?: string
			type?:                                        string
		})]
		transit_gateway_route_table_id!: string
		filter!: matchN(1, [#filter, [_, ...] & [...#filter]])
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
