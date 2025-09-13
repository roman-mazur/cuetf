package res

#google_compute_region_target_http_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_target_http_proxy")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Specifies how long to keep a connection open, after completing
		// a response,
		// while there is no matching traffic (in seconds). If an HTTP
		// keepalive is
		// not specified, a default value (600 seconds) will be used. For
		// Regional
		// HTTP(S) load balancer, the minimum allowed value is 5 seconds
		// and the
		// maximum allowed value is 600 seconds.
		http_keep_alive_timeout_sec?: number
		id?:                          string

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

		// The unique identifier for the resource.
		proxy_id?: number

		// The Region in which the created target https proxy should
		// reside.
		// If it is not provided, the provider region is used.
		region?:    string
		timeouts?:  #timeouts
		self_link?: string

		// A reference to the RegionUrlMap resource that defines the
		// mapping from URL
		// to the BackendService.
		url_map!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
