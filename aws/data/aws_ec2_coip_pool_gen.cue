package data

#aws_ec2_coip_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_coip_pool")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arn?:                          string
		id?:                           string
		local_gateway_route_table_id?: string
		pool_cidrs?: [...string]
		pool_id?: string
		region?:  string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
