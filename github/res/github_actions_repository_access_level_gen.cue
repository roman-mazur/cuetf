package res

#github_actions_repository_access_level: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_repository_access_level")
	access_level!: string
	id?:           string
	repository!:   string
}
