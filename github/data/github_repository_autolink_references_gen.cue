package data

#github_repository_autolink_references: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_autolink_references")
	autolink_references?: [...{
		is_alphanumeric?:     bool
		key_prefix?:          string
		target_url_template?: string
	}]
	id?:        string
	repository: string
}
