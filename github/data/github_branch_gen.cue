package data

#github_branch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_branch")
	close({
		branch!:     string
		etag?:       string
		id?:         string
		ref?:        string
		repository!: string
		sha?:        string
	})
}
