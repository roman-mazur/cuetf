package data

#google_artifact_registry_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_tags")
	close({
		filter?:        string
		id?:            string
		location!:      string
		package_name!:  string
		project?:       string
		repository_id!: string
		tags?: [...close({
			name?:    string
			version?: string
		})]
	})
}
