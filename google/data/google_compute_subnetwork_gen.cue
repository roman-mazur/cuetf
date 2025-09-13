package data

#google_compute_subnetwork: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_subnetwork")
	close({
		description?:              string
		external_ipv6_prefix?:     string
		gateway_address?:          string
		id?:                       string
		internal_ipv6_prefix?:     string
		ip_cidr_range?:            string
		ipv6_access_type?:         string
		name?:                     string
		network?:                  string
		private_ip_google_access?: bool
		project?:                  string
		region?:                   string
		secondary_ip_range?: [...close({
			ip_cidr_range?: string
			range_name?:    string
		})]
		self_link?:     string
		stack_type?:    string
		subnetwork_id?: number
	})
}
