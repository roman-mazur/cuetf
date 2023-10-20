package data

#aws_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route_table")
	arn?: string
	associations?: [...{
		gateway_id?:                 string
		main?:                       bool
		route_table_association_id?: string
		route_table_id?:             string
		subnet_id?:                  string
	}]
	gateway_id?:     string
	id?:             string
	owner_id?:       string
	route_table_id?: string
	routes?: [...{
		carrier_gateway_id?:         string
		cidr_block?:                 string
		core_network_arn?:           string
		destination_prefix_list_id?: string
		egress_only_gateway_id?:     string
		gateway_id?:                 string
		instance_id?:                string
		ipv6_cidr_block?:            string
		local_gateway_id?:           string
		nat_gateway_id?:             string
		network_interface_id?:       string
		transit_gateway_id?:         string
		vpc_endpoint_id?:            string
		vpc_peering_connection_id?:  string
	}]
	subnet_id?: string
	tags?: [string]: string
	vpc_id?:   string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
