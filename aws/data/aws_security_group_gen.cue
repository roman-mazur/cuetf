package data

#aws_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_security_group")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arn?:         string
		description?: string
		id?:          string
		name?:        string
		region?:      string
		tags?: [string]: string
		vpc_id?:   string
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
