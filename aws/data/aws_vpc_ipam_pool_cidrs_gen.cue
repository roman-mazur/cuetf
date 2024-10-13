package data

#aws_vpc_ipam_pool_cidrs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_pool_cidrs")
	id?: string
	ipam_pool_cidrs?: [...{
		cidr?:  string
		state?: string
	}]
	ipam_pool_id!: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
