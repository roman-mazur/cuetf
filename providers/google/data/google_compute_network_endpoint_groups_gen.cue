package data

#google_compute_network_endpoint_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_network_endpoint_groups")
	close({
		filter?: string
		id?:     string
		network_endpoint_groups?: [...close({
			default_port?:          number
			description?:           string
			generated_id?:          number
			name?:                  string
			network?:               string
			network_endpoint_type?: string
			project?:               string
			self_link?:             string
			size?:                  number
			subnetwork?:            string
			zone?:                  string
		})]
		project?: string
		zone?:    string
	})
}
