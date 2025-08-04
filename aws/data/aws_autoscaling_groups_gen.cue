package data

#aws_autoscaling_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_groups")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arns?: [...string]
		id?: string
		names?: [...string]
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
