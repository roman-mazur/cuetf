package res

#github_repository_autolink_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_autolink_reference")
	etag?:                string
	id?:                  string
	is_alphanumeric?:     bool
	key_prefix!:          string
	repository!:          string
	target_url_template!: string
}
