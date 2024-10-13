package res

#github_branch_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_branch_default")
	branch!:     string
	etag?:       string
	id?:         string
	rename?:     bool
	repository!: string
}
