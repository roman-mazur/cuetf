package res

#aws_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route_table")
	arn?:      string
	id?:       string
	owner_id?: string
	propagating_vgws?: [...string]
	route?: [...{
		carrier_gateway_id?:         string
		cidr_block?:                 string
		core_network_arn?:           string
		destination_prefix_list_id?: string
		egress_only_gateway_id?:     string
		gateway_id?:                 string
		ipv6_cidr_block?:            string
		local_gateway_id?:           string
		nat_gateway_id?:             string
		network_interface_id?:       string
		transit_gateway_id?:         string
		vpc_endpoint_id?:            string
		vpc_peering_connection_id?:  string
	}]
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id:    string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
