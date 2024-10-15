package data

#github_issue_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_issue_labels")
	id?: string
	labels?: [...{
		color?:       string
		description?: string
		name?:        string
		url?:         string
	}]
	repository!: string
}
