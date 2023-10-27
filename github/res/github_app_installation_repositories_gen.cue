package res

#github_app_installation_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_app_installation_repositories")
	id?:             string
	installation_id: string
	selected_repositories: [...string]
}
