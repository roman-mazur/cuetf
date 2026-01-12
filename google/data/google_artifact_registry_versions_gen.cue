package data

#google_artifact_registry_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_versions")
	close({
		filter?:        string
		id?:            string
		location!:      string
		package_name!:  string
		project?:       string
		repository_id!: string
		versions?: [...close({
			annotations?: [string]: string
			create_time?: string
			description?: string
			name?:        string
			related_tags?: [...close({
				name?:    string
				version?: string
			})]
			update_time?: string
		})]
		view?: string
	})
}
