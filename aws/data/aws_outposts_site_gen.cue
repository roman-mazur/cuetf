package data

#aws_outposts_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_outposts_site")
	close({
		account_id?:  string
		description?: string
		id?:          string
		name?:        string
		region?:      string
	})
}
