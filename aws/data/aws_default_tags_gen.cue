package data

#aws_default_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_default_tags")
	id?: string
	tags?: [string]: string
}
