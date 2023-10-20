package res

#aws_vpc_ipv6_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipv6_cidr_block_association")
	id?:                  string
	ipv6_cidr_block?:     string
	ipv6_ipam_pool_id:    string
	ipv6_netmask_length?: number
	vpc_id:               string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
