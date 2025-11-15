package data

#google_artifact_registry_python_packages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_python_packages")
	close({
		id?:       string
		location!: string
		project?:  string
		python_packages?: [...close({
			create_time?:  string
			name?:         string
			package_name?: string
			update_time?:  string
			version?:      string
		})]
		repository_id!: string
	})
}
