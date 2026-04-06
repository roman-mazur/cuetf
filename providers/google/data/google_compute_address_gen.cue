package data

#google_compute_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_address")
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
		region?:        string
		self_link?:     string
		status?:        string
		subnetwork?:    string
		users?:         string
	})
}
