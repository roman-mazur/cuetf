package data

#google_compute_global_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_global_address")
	close({
		address?:       string
		address_type?:  string
		id?:            string
		name!:          string
		network?:       string
		network_tier?:  string
		prefix_length?: number
		project?:       string
		purpose?:       string
		self_link?:     string
		status?:        string
		subnetwork?:    string
		users?:         string
	})
}
