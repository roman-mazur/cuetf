package data

#google_artifact_registry_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_tag")
	close({
		id?:            string
		location!:      string
		name?:          string
		package_name!:  string
		project?:       string
		repository_id!: string
		tag_name!:      string
		version?:       string
	})
}
