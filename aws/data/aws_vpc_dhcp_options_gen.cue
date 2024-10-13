package data

#aws_vpc_dhcp_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_dhcp_options")
	arn?:             string
	dhcp_options_id?: string
	domain_name?:     string
	domain_name_servers?: [...string]
	id?:                                string
	ipv6_address_preferred_lease_time?: string
	netbios_name_servers?: [...string]
	netbios_node_type?: string
	ntp_servers?: [...string]
	owner_id?: string
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
