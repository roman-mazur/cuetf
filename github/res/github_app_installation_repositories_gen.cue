package res

#github_app_installation_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_app_installation_repositories")
	close({
		id?:              string
		installation_id!: string
		selected_repositories!: [...string]
	})
}
