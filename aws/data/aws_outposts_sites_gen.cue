package data

#aws_outposts_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_outposts_sites")
	close({
		id?: string
		ids?: [...string]
		region?: string
	})
}
