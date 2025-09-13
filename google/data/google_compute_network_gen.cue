package data

#google_compute_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_network")
	close({
		description?:         string
		gateway_ipv4?:        string
		id?:                  string
		internal_ipv6_range?: string
		name!:                string
		network_id?:          number
		network_profile?:     string
		project?:             string
		self_link?:           string
		subnetworks_self_links?: [...string]
	})
}
