package data

#google_artifact_registry_maven_artifacts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_maven_artifacts")
	close({
		id?:       string
		location!: string
		maven_artifacts?: [...close({
			artifact_id?: string
			create_time?: string
			group_id?:    string
			name?:        string
			pom_uri?:     string
			update_time?: string
			version?:     string
		})]
		project?:       string
		repository_id!: string
	})
}
