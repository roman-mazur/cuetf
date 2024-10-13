package data

#aws_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_network_interface")
	arn?: string
	association?: [...{
		allocation_id?:     string
		association_id?:    string
		carrier_ip?:        string
		customer_owned_ip?: string
		ip_owner_id?:       string
		public_dns_name?:   string
		public_ip?:         string
	}]
	attachment?: [...{
		attachment_id?:     string
		device_index?:      number
		instance_id?:       string
		instance_owner_id?: string
	}]
	availability_zone?: string
	description?:       string
	id?:                string
	interface_type?:    string
	ipv6_addresses?: [...string]
	mac_address?:      string
	outpost_arn?:      string
	owner_id?:         string
	private_dns_name?: string
	private_ip?:       string
	private_ips?: [...string]
	requester_id?: string
	security_groups?: [...string]
	subnet_id?: string
	tags?: [string]: string
	vpc_id?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
