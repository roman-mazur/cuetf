package res

#github_team_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_repository")
	etag?:       string
	id?:         string
	permission?: string
	repository!: string
	team_id!:    string
}
