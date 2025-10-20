package data

#aws_vpn_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpn_connection")
	close({
		category?:                       string
		core_network_arn?:               string
		core_network_attachment_arn?:    string
		customer_gateway_configuration?: string
		customer_gateway_id?:            string
		gateway_association_state?:      string
		pre_shared_key_arn?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		filter?: matchN(1, [#filter, [...#filter]])
		routes?: [...close({
			destination_cidr_block?: string
			source?:                 string
			state?:                  string
		})]
		state?: string
		tags?: [string]: string
		transit_gateway_id?: string
		type?:               string
		vgw_telemetries?: [...close({
			accepted_route_count?: number
			last_status_change?:   string
			outside_ip_address?:   string
			status?:               string
			status_message?:       string
		})]
		vpn_connection_id?: string
		vpn_gateway_id?:    string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
