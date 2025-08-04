package res

#github_branch_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_branch_default")
	close({
		branch!:     string
		etag?:       string
		id?:         string
		rename?:     bool
		repository!: string
	})
}
