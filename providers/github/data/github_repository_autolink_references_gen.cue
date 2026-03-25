package data

#github_repository_autolink_references: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_autolink_references")
	close({
		autolink_references?: [...close({
			is_alphanumeric?:     bool
			key_prefix?:          string
			target_url_template?: string
		})]
		id?:         string
		repository!: string
	})
}
