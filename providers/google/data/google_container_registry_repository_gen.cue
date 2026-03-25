package data

#google_container_registry_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_container_registry_repository")
	close({
		id?:             string
		project?:        string
		region?:         string
		repository_url?: string
	})
}
