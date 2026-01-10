package data

#aws_canonical_user_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_canonical_user_id")
	close({
		display_name?: string
		id?:           string
	})
}
