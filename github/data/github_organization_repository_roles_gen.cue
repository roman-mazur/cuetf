package data

#github_organization_repository_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_repository_roles")
	close({
		id?: string

		// Available organization repository roles.
		roles?: [...close({
			base_role?:   string
			description?: string
			name?:        string
			permissions?: [...string]
			role_id?: number
		})]
	})
}
