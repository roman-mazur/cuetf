package data

#github_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_membership")
	close({
		etag?:         string
		id?:           string
		organization?: string
		role?:         string
		state?:        string
		username!:     string
	})
}
