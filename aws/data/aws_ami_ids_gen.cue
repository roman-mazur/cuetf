package data

#aws_ami_ids: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami_ids")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		executable_users?: [...string]
		id?: string
		ids?: [...string]
		include_deprecated?: bool
		name_regex?:         string
		owners!: [...string]
		region?:         string
		sort_ascending?: bool
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
