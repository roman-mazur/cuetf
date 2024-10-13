package data

#aws_vpc_peering_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_peering_connection")
	accepter?: [string]: bool
	cidr_block?: string
	cidr_block_set?: [...{
		cidr_block?: string
	}]
	id?: string
	ipv6_cidr_block_set?: [...{
		ipv6_cidr_block?: string
	}]
	owner_id?:        string
	peer_cidr_block?: string
	peer_cidr_block_set?: [...{
		cidr_block?: string
	}]
	peer_ipv6_cidr_block_set?: [...{
		ipv6_cidr_block?: string
	}]
	peer_owner_id?: string
	peer_region?:   string
	peer_vpc_id?:   string
	region?:        string
	requester?: [string]: bool
	status?: string
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
