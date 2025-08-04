package res

#github_repository_dependabot_security_updates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_dependabot_security_updates")
	close({
		// The state of the automated security fixes.
		enabled!: bool
		id?:      string

		// The GitHub repository.
		repository!: string
	})
}
