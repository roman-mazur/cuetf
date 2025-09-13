package data

#google_compute_subnetworks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_subnetworks")
	close({
		filter?:  string
		id?:      string
		project?: string
		region?:  string
		subnetworks?: [...close({
			description?:              string
			ip_cidr_range?:            string
			name?:                     string
			network?:                  string
			network_name?:             string
			network_self_link?:        string
			private_ip_google_access?: bool
			self_link?:                string
		})]
	})
}
