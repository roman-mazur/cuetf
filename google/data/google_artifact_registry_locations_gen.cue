package data

#google_artifact_registry_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_locations")
	close({
		id?: string
		locations?: [...string]
		project?: string
	})
}
