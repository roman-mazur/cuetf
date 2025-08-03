package data

#aws_ec2_public_ipv4_pools: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_public_ipv4_pools")
	close({
		id?: string
		pool_ids?: [...string]
		region?: string
		tags?: [string]: string
		filter?: matchN(1, [#filter, [...#filter]])
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
