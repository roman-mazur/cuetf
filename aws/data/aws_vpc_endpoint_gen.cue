package data

#aws_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpc_endpoint")
	close({
		arn?: string
		cidr_blocks?: [...string]
		dns_entry?: [...close({
			dns_name?:       string
			hosted_zone_id?: string
		})]
		dns_options?: [...close({
			dns_record_ip_type?:                             string
			private_dns_only_for_inbound_resolver_endpoint?: bool
		})]
		id?:              string
		ip_address_type?: string
		network_interface_ids?: [...string]
		owner_id?: string
		policy?:   string
		filter?: matchN(1, [#filter, [...#filter]])
		prefix_list_id?:      string
		private_dns_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		timeouts?:          #timeouts
		requester_managed?: bool
		route_table_ids?: [...string]
		security_group_ids?: [...string]
		service_name?: string
		state?:        string
		subnet_ids?: [...string]
		tags?: [string]: string
		vpc_endpoint_type?: string
		vpc_id?:            string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
