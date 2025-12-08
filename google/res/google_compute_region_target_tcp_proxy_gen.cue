package res

#google_compute_region_target_tcp_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_target_tcp_proxy")
	close({
		// A reference to the BackendService resource.
		backend_service!: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:    string
		project?: string

		// This field only applies when the forwarding rule that
		// references
		// this target proxy has a loadBalancingScheme set to
		// INTERNAL_SELF_MANAGED.
		proxy_bind?: bool

		// Specifies the type of proxy header to append before sending
		// data to
		// the backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The unique identifier for the resource.
		proxy_id?: number
		timeouts?: #timeouts

		// The Region in which the created target TCP proxy should reside.
		// If it is not provided, the provider region is used.
		region?:    string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
