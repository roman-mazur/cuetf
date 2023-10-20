package data

#aws_lbs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lbs")
	arns?: [...string]
	id?: string
	tags?: [string]: string
}
