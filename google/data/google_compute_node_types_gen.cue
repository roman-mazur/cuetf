package data

#google_compute_node_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_node_types")
	close({
		id?: string
		names?: [...string]
		project?: string
		zone?:    string
	})
}
