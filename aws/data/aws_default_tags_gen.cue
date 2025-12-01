package data

#aws_default_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_default_tags")
	close({
		id?: string
		tags?: [string]: string
	})
}
