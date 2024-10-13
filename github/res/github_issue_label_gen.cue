package res

#github_issue_label: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_issue_label")
	color!:       string
	description?: string
	etag?:        string
	id?:          string
	name!:        string
	repository!:  string
	url?:         string
}
