package data

#aws_ec2_coip_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_coip_pool")
	arn?:                          string
	id?:                           string
	local_gateway_route_table_id?: string
	pool_cidrs?: [...string]
	pool_id?: string
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
