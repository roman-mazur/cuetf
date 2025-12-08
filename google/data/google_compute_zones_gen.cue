package data

#google_compute_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_zones")
	close({
		id?: string
		names?: [...string]
		project?: string
		region?:  string
		status?:  string
	})
}
