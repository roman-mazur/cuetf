package data

#google_cloud_run_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_run_locations")
	close({
		id?: string
		locations?: [...string]
		project?: string
	})
}
