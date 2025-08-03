package data

#aws_vpc_ipam_pool_cidrs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pool_cidrs")
	close({
		id?: string
		ipam_pool_cidrs?: [...close({
			cidr?:  string
			state?: string
		})]
		ipam_pool_id!: string
		region?:       string
		filter?: matchN(1, [#filter, [...#filter]])
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
