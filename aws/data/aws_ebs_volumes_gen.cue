package data

#aws_ebs_volumes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_volumes")
	close({
		id?: string
		ids?: [...string]
		region?: string
		tags?: [string]: string
		filter?: matchN(1, [#filter, [...#filter]])
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
