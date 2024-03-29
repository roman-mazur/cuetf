package res

#aws_eip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eip")
	address?:                   string
	allocation_id?:             string
	associate_with_private_ip?: string
	association_id?:            string
	carrier_ip?:                string
	customer_owned_ip?:         string
	customer_owned_ipv4_pool?:  string
	domain?:                    string
	id?:                        string
	instance?:                  string
	network_border_group?:      string
	network_interface?:         string
	private_dns?:               string
	private_ip?:                string
	public_dns?:                string
	public_ip?:                 string
	public_ipv4_pool?:          string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		delete?: string
		read?:   string
		update?: string
	}
}
