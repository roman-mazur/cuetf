package res

#github_repository_autolink_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_autolink_reference")
	close({
		etag?: string

		// Whether this autolink reference matches alphanumeric
		// characters. If false, this autolink reference only matches
		// numeric characters.
		is_alphanumeric?: bool

		// This prefix appended by a number will generate a link any time
		// it is found in an issue, pull request, or commit
		key_prefix!: string
		id?:         string

		// The repository name
		repository!: string

		// The template of the target URL used for the links; must be a
		// valid URL and contain `<num>` for the reference number
		target_url_template!: string
	})
}
