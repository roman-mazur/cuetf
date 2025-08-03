package data

#aws_db_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_instances")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		instance_arns?: [...string]
		instance_identifiers?: [...string]
		region?: string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
