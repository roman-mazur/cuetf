package data

#aws_nat_gateways: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_nat_gateways")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		ids?: [...string]
		region?: string
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
