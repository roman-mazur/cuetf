package data

#aws_vpc: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc")
	arn?:        string
	cidr_block?: string
	cidr_block_associations?: [...{
		association_id?: string
		cidr_block?:     string
		state?:          string
	}]
	default?:                              bool
	dhcp_options_id?:                      string
	enable_dns_hostnames?:                 bool
	enable_dns_support?:                   bool
	enable_network_address_usage_metrics?: bool
	id?:                                   string
	instance_tenancy?:                     string
	ipv6_association_id?:                  string
	ipv6_cidr_block?:                      string
	main_route_table_id?:                  string
	owner_id?:                             string
	state?:                                string
	tags?: [string]: string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
