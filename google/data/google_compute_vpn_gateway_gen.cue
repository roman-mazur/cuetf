package data

#google_compute_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_vpn_gateway")
	close({
		description?: string
		id?:          string
		name!:        string
		network?:     string
		project?:     string
		region?:      string
		self_link?:   string
	})
}
