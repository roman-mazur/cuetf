package res

#google_compute_region_network_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_network_firewall_policy")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// Fingerprint of the resource. This field is used internally
		// during updates of this resource.
		fingerprint?: string
		id?:          string

		// User-provided name of the Network firewall policy. The name
		// should be unique in the project in which the firewall policy
		// is created. The name must be 1-63 characters long, and comply
		// with RFC1035. Specifically, the name must be 1-63 characters
		// long and match the regular expression
		// [a-z]([-a-z0-9]*[a-z0-9])? which means the first character
		// must be a lowercase letter, and all following characters must
		// be a dash, lowercase letter, or digit, except the last
		// character, which cannot be a dash.
		name!:    string
		project?: string

		// The region of this resource.
		region?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		region_network_firewall_policy_id?: string

		// Total count of all firewall policy rule tuples. A firewall
		// policy can not exceed a set number of tuples.
		rule_tuple_count?: number
		timeouts?:         #timeouts

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
