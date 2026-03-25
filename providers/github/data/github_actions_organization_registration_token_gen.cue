package data

#github_actions_organization_registration_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_actions_organization_registration_token")
	close({
		expires_at?: number
		id?:         string
		token?:      string
	})
}
