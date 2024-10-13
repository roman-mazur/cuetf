package data

#aws_imagebuilder_infrastructure_configurations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_infrastructure_configurations")
	arns?: [...string]
	id?: string
	names?: [...string]
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
