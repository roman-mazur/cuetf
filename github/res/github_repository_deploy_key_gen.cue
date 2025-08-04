package res

#github_repository_deploy_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_deploy_key")
	close({
		etag?:       string
		id?:         string
		key!:        string
		read_only?:  bool
		repository!: string
		title!:      string
	})
}
