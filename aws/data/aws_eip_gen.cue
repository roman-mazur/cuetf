package data

#aws_eip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eip")
	arn?:                        string
	association_id?:             string
	carrier_ip?:                 string
	customer_owned_ip?:          string
	customer_owned_ipv4_pool?:   string
	domain?:                     string
	id?:                         string
	instance_id?:                string
	ipam_pool_id?:               string
	network_interface_id?:       string
	network_interface_owner_id?: string
	private_dns?:                string
	private_ip?:                 string
	ptr_record?:                 string
	public_dns?:                 string
	public_ip?:                  string
	public_ipv4_pool?:           string
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
