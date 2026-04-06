package data

#google_artifact_registry_packages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_packages")
	close({
		filter?:   string
		id?:       string
		location!: string
		packages?: [...close({
			annotations?: [string]: string
			create_time?:  string
			display_name?: string
			name?:         string
			update_time?:  string
		})]
		project?:       string
		repository_id!: string
	})
}
