package data

#aws_ec2_managed_prefix_lists: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_lists")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		ids?: [...string]
		region?: string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
