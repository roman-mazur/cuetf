package res

#google_compute_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_vpn_gateway")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// The unique identifier for the resource.
		gateway_id?: number
		id?:         string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means
		// the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string

		// The network this VPN gateway is accepting traffic for.
		network!:  string
		project?:  string
		timeouts?: #timeouts

		// The region this gateway should sit in.
		region?:    string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
