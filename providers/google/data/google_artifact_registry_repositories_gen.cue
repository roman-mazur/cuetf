package data

#google_artifact_registry_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_repositories")
	close({
		id?:          string
		location!:    string
		name_filter?: string
		project?:     string
		repositories?: [...close({
			create_time?:   string
			description?:   string
			format?:        string
			id?:            string
			repository_id?: string
			update_time?:   string
		})]
	})
}
