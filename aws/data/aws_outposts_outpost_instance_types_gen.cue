package data

#aws_outposts_outpost_instance_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_outposts_outpost_instance_types")
	arn!: string
	id?:  string
	instance_types?: [...string]
}
