package data

#aws_ec2_transit_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway")
	close({
		amazon_side_asn?: number
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:                           #timeouts
		arn?:                                string
		association_default_route_table_id?: string
		auto_accept_shared_attachments?:     string
		default_route_table_association?:    string
		default_route_table_propagation?:    string
		description?:                        string
		dns_support?:                        string
		id?:                                 string
		multicast_support?:                  string
		owner_id?:                           string
		propagation_default_route_table_id?: string
		region?:                             string
		security_group_referencing_support?: string
		tags?: [string]: string
		transit_gateway_cidr_blocks?: [...string]
		vpn_ecmp_support?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
