package data

#aws_security_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_security_groups")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arns?: [...string]
		id?: string
		ids?: [...string]
		region?: string
		tags?: [string]: string
		vpc_ids?: [...string]
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
