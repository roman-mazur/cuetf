package res

#aws_vpc: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc")
	arn?:                                  string
	assign_generated_ipv6_cidr_block?:     bool
	cidr_block?:                           string
	default_network_acl_id?:               string
	default_route_table_id?:               string
	default_security_group_id?:            string
	dhcp_options_id?:                      string
	enable_dns_hostnames?:                 bool
	enable_dns_support?:                   bool
	enable_network_address_usage_metrics?: bool
	id?:                                   string
	instance_tenancy?:                     string
	ipv4_ipam_pool_id?:                    string
	ipv4_netmask_length?:                  number
	ipv6_association_id?:                  string
	ipv6_cidr_block?:                      string
	ipv6_cidr_block_network_border_group?: string
	ipv6_ipam_pool_id?:                    string
	ipv6_netmask_length?:                  number
	main_route_table_id?:                  string
	owner_id?:                             string
	tags?: [string]:     string
	tags_all?: [string]: string
}
