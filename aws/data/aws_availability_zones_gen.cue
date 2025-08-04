package data

#aws_availability_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_availability_zones")
	close({
		all_availability_zones?: bool
		exclude_names?: [...string]
		exclude_zone_ids?: [...string]
		group_names?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		names?: [...string]
		region?: string
		state?:  string
		zone_ids?: [...string]
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
