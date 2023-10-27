package data

#github_repository_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_file")
	branch?:         string
	commit_author?:  string
	commit_email?:   string
	commit_message?: string
	commit_sha?:     string
	content?:        string
	file:            string
	id?:             string
	ref?:            string
	repository:      string
	sha?:            string
}
