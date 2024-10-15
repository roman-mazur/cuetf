package data

#aws_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route")
	carrier_gateway_id?:          string
	core_network_arn?:            string
	destination_cidr_block?:      string
	destination_ipv6_cidr_block?: string
	destination_prefix_list_id?:  string
	egress_only_gateway_id?:      string
	gateway_id?:                  string
	id?:                          string
	instance_id?:                 string
	local_gateway_id?:            string
	nat_gateway_id?:              string
	network_interface_id?:        string
	route_table_id!:              string
	transit_gateway_id?:          string
	vpc_peering_connection_id?:   string
	timeouts?:                    #timeouts

	#timeouts: read?: string
}
