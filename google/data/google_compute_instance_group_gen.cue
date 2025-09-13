package data

#google_compute_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance_group")
	close({
		description?: string
		id?:          string
		instances?: [...string]
		name?: string
		named_port?: [...close({
			name?: string
			port?: number
		})]
		network?:   string
		project?:   string
		self_link?: string
		size?:      number
		zone?:      string
	})
}
