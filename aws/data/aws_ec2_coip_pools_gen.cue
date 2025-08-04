package data

#aws_ec2_coip_pools: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_coip_pools")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		pool_ids?: [...string]
		region?: string
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
