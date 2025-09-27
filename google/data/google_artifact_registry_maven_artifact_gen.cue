package data

#google_artifact_registry_maven_artifact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_maven_artifact")
	close({
		artifact_id!:   string
		create_time?:   string
		group_id!:      string
		id?:            string
		location!:      string
		name?:          string
		pom_uri?:       string
		project?:       string
		repository_id!: string
		update_time?:   string
		version?:       string
	})
}
