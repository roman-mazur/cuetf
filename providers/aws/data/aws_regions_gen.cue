package data

#aws_regions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_regions")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		all_regions?: bool
		id?:          string
		names?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
