package res

#github_project_column: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_project_column")
	column_id?: number
	etag?:      string
	id?:        string
	name:       string
	project_id: string
}
