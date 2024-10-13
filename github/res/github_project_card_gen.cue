package res

#github_project_card: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_project_card")
	card_id?:      number
	column_id!:    string
	content_id?:   number
	content_type?: string
	etag?:         string
	id?:           string
	note?:         string
}
