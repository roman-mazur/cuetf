package data

#aws_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint")
	arn?: string
	cidr_blocks?: [...string]
	dns_entry?: [...{
		dns_name?:       string
		hosted_zone_id?: string
	}]
	dns_options?: [...{
		dns_record_ip_type?:                             string
		private_dns_only_for_inbound_resolver_endpoint?: bool
	}]
	id?:              string
	ip_address_type?: string
	network_interface_ids?: [...string]
	owner_id?:            string
	policy?:              string
	prefix_list_id?:      string
	private_dns_enabled?: bool
	requester_managed?:   bool
	route_table_ids?: [...string]
	security_group_ids?: [...string]
	service_name?: string
	state?:        string
	subnet_ids?: [...string]
	tags?: [string]: string
	vpc_endpoint_type?: string
	vpc_id?:            string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
