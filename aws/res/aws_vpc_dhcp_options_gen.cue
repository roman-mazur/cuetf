package res

#aws_vpc_dhcp_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_dhcp_options")
	arn?:         string
	domain_name?: string
	domain_name_servers?: [...string]
	id?:                                string
	ipv6_address_preferred_lease_time?: string
	netbios_name_servers?: [...string]
	netbios_node_type?: string
	ntp_servers?: [...string]
	owner_id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
}
