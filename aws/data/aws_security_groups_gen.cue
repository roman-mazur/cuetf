package data

#aws_security_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_security_groups")
	close({
		arns?: [...string]
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		ids?: [...string]
		region?: string
		tags?: [string]: string
		vpc_ids?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
