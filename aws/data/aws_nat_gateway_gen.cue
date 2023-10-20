package data

#aws_nat_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_nat_gateway")
	allocation_id?:        string
	association_id?:       string
	connectivity_type?:    string
	id?:                   string
	network_interface_id?: string
	private_ip?:           string
	public_ip?:            string
	secondary_allocation_ids?: [...string]
	secondary_private_ip_address_count?: number
	secondary_private_ip_addresses?: [...string]
	state?:     string
	subnet_id?: string
	tags?: [string]: string
	vpc_id?:   string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
