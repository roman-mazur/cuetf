package data

#github_dependabot_organization_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_dependabot_organization_secrets")
	close({
		id?: string
		secrets?: [...close({
			created_at?: string
			name?:       string
			updated_at?: string
			visibility?: string
		})]
	})
}
