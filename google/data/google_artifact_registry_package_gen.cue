package data

#google_artifact_registry_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_package")
	close({
		annotations?: [string]: string
		create_time?:   string
		display_name?:  string
		id?:            string
		location!:      string
		name!:          string
		project?:       string
		repository_id!: string
		update_time?:   string
	})
}
