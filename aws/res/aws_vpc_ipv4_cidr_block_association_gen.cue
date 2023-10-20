package res

#aws_vpc_ipv4_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipv4_cidr_block_association")
	cidr_block?:          string
	id?:                  string
	ipv4_ipam_pool_id?:   string
	ipv4_netmask_length?: number
	vpc_id:               string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
