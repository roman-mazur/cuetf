package res

#github_app_installation_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_app_installation_repository")
	id?:              string
	installation_id!: string
	repo_id?:         number
	repository!:      string
}
