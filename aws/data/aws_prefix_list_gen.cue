package data

#aws_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prefix_list")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		cidr_blocks?: [...string]
		id?:             string
		name?:           string
		prefix_list_id?: string
		region?:         string
		timeouts?:       #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
