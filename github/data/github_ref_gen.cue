package data

#github_ref: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_ref")
	etag?:       string
	id?:         string
	owner?:      string
	ref!:        string
	repository!: string
	sha?:        string
}
