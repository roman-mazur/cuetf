package data

#google_artifact_registry_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_version")
	close({
		annotations?: [string]: string
		create_time?:  string
		description?:  string
		id?:           string
		location!:     string
		name?:         string
		package_name!: string
		project?:      string
		related_tags?: [...close({
			name?:    string
			version?: string
		})]
		repository_id!: string
		update_time?:   string
		version_name!:  string
		view?:          string
	})
}
