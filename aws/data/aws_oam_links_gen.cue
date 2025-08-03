package data

#aws_oam_links: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_oam_links")
	close({
		arns?: [...string]
		id?:     string
		region?: string
	})
}
