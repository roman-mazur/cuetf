package res

#aws_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_subnet")
	close({
		arn?:                             string
		assign_ipv6_address_on_creation?: bool
		availability_zone?:               string
		availability_zone_id?:            string
		cidr_block?:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                         string
		customer_owned_ipv4_pool?:                       string
		enable_dns64?:                                   bool
		enable_lni_at_device_index?:                     number
		enable_resource_name_dns_a_record_on_launch?:    bool
		enable_resource_name_dns_aaaa_record_on_launch?: bool
		id?:                                             string
		ipv4_ipam_pool_id?:                              string
		ipv4_netmask_length?:                            number
		timeouts?:                                       #timeouts
		ipv6_cidr_block?:                                string
		ipv6_cidr_block_association_id?:                 string
		ipv6_ipam_pool_id?:                              string
		ipv6_native?:                                    bool
		ipv6_netmask_length?:                            number
		map_customer_owned_ip_on_launch?:                bool
		map_public_ip_on_launch?:                        bool
		outpost_arn?:                                    string
		owner_id?:                                       string
		private_dns_hostname_type_on_launch?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
