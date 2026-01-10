package res

#aws_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route")
	close({
		carrier_gateway_id?:          string
		core_network_arn?:            string
		destination_cidr_block?:      string
		destination_ipv6_cidr_block?: string
		destination_prefix_list_id?:  string
		egress_only_gateway_id?:      string
		timeouts?:                    #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		gateway_id?:                string
		id?:                        string
		instance_id?:               string
		instance_owner_id?:         string
		local_gateway_id?:          string
		nat_gateway_id?:            string
		network_interface_id?:      string
		origin?:                    string
		route_table_id!:            string
		state?:                     string
		transit_gateway_id?:        string
		vpc_endpoint_id?:           string
		vpc_peering_connection_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
