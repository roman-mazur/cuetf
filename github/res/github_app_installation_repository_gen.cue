package res

#github_app_installation_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_app_installation_repository")
	close({
		id?:              string
		installation_id!: string
		repo_id?:         number
		repository!:      string
	})
}
