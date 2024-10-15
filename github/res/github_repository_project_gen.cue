package res

#github_repository_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_project")
	body?:       string
	etag?:       string
	id?:         string
	name!:       string
	repository!: string
	url?:        string
}
