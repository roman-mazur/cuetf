package res

#github_project_card: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_project_card")
	close({
		card_id?:      number
		column_id!:    string
		content_id?:   number
		content_type?: string
		etag?:         string
		id?:           string
		note?:         string
	})
}
