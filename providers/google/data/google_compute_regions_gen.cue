package data

#google_compute_regions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_regions")
	close({
		id?: string
		names?: [...string]
		project?: string
		status?:  string
	})
}
