package res

#github_dependabot_organization_secret_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_dependabot_organization_secret_repositories")
	id?:          string
	secret_name!: string
	selected_repository_ids!: [...number]
}
