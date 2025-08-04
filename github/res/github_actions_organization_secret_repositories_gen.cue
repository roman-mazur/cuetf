package res

#github_actions_organization_secret_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_secret_repositories")
	close({
		id?: string

		// Name of the existing secret.
		secret_name!: string

		// An array of repository ids that can access the organization
		// secret.
		selected_repository_ids!: [...number]
	})
}
