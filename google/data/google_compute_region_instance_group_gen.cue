package data

#google_compute_region_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_instance_group")
	close({
		id?: string
		instances?: [...close({
			instance?: string
			named_ports?: [...close({
				name?: string
				port?: number
			})]
			status?: string
		})]
		name?:      string
		project?:   string
		region?:    string
		self_link?: string
		size?:      number
	})
}
