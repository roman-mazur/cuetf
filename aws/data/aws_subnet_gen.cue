package data

#aws_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_subnet")
	close({
		arn?:                             string
		assign_ipv6_address_on_creation?: bool
		filter?: matchN(1, [#filter, [...#filter]])
		availability_zone?:                              string
		availability_zone_id?:                           string
		available_ip_address_count?:                     number
		cidr_block?:                                     string
		customer_owned_ipv4_pool?:                       string
		default_for_az?:                                 bool
		enable_dns64?:                                   bool
		enable_lni_at_device_index?:                     number
		enable_resource_name_dns_a_record_on_launch?:    bool
		timeouts?:                                       #timeouts
		enable_resource_name_dns_aaaa_record_on_launch?: bool
		id?:                                             string
		ipv6_cidr_block?:                                string
		ipv6_cidr_block_association_id?:                 string
		ipv6_native?:                                    bool
		map_customer_owned_ip_on_launch?:                bool
		map_public_ip_on_launch?:                        bool
		outpost_arn?:                                    string
		owner_id?:                                       string
		private_dns_hostname_type_on_launch?:            string
		region?:                                         string
		state?:                                          string
		tags?: [string]: string
		vpc_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
