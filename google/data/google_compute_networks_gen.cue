package data

#google_compute_networks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_networks")
	close({
		id?: string
		networks?: [...string]
		project?:   string
		self_link?: string
	})
}
