package data

#aws_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint")
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
		owner_id?:            string
		policy?:              string
		prefix_list_id?:      string
		private_dns_enabled?: bool
		filter?: matchN(1, [#filter, [...#filter]])
		region?:            string
		requester_managed?: bool
		timeouts?:          #timeouts
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
