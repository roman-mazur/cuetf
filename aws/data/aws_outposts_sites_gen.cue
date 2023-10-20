package data

#aws_outposts_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_outposts_sites")
	id?: string
	ids?: [...string]
}
