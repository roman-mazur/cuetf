package res

#aws_default_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_default_subnet")
	arn?:                                            string
	assign_ipv6_address_on_creation?:                bool
	availability_zone:                               string
	availability_zone_id?:                           string
	cidr_block?:                                     string
	customer_owned_ipv4_pool?:                       string
	enable_dns64?:                                   bool
	enable_lni_at_device_index?:                     number
	enable_resource_name_dns_a_record_on_launch?:    bool
	enable_resource_name_dns_aaaa_record_on_launch?: bool
	existing_default_subnet?:                        bool
	force_destroy?:                                  bool
	id?:                                             string
	ipv6_cidr_block?:                                string
	ipv6_cidr_block_association_id?:                 string
	ipv6_native?:                                    bool
	map_customer_owned_ip_on_launch?:                bool
	map_public_ip_on_launch?:                        bool
	outpost_arn?:                                    string
	owner_id?:                                       string
	private_dns_hostname_type_on_launch?:            string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?:   string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
