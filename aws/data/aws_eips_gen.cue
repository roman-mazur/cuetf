package data

#aws_eips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eips")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		allocation_ids?: [...string]
		id?: string
		public_ips?: [...string]
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
