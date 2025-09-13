package res

#aws_default_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_default_route_table")
	close({
		arn?:                    string
		default_route_table_id!: string
		id?:                     string
		owner_id?:               string
		propagating_vgws?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		route?: [...close({
			cidr_block?:                 string
			core_network_arn?:           string
			destination_prefix_list_id?: string
			egress_only_gateway_id?:     string
			gateway_id?:                 string
			instance_id?:                string
			ipv6_cidr_block?:            string
			nat_gateway_id?:             string
			network_interface_id?:       string
			transit_gateway_id?:         string
			vpc_endpoint_id?:            string
			vpc_peering_connection_id?:  string
		})]
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
