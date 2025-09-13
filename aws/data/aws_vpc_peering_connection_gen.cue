package data

#aws_vpc_peering_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_peering_connection")
	close({
		accepter?: [string]: bool
		cidr_block?: string
		cidr_block_set?: [...close({
			cidr_block?: string
		})]
		id?: string
		ipv6_cidr_block_set?: [...close({
			ipv6_cidr_block?: string
		})]
		owner_id?:        string
		peer_cidr_block?: string
		peer_cidr_block_set?: [...close({
			cidr_block?: string
		})]
		peer_ipv6_cidr_block_set?: [...close({
			ipv6_cidr_block?: string
		})]
		filter?: matchN(1, [#filter, [...#filter]])
		peer_owner_id?: string
		peer_region?:   string
		timeouts?:      #timeouts
		peer_vpc_id?:   string
		requester?: [string]: bool
		requester_region?: string
		status?:           string
		tags?: [string]: string
		vpc_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
