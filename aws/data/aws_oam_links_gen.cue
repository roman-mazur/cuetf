package data

#aws_oam_links: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_oam_links")
	arns?: [...string]
	id?: string
}
