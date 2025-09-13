package res

#google_compute_target_http_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_target_http_proxy")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object. This field is used in optimistic locking.
		// This field will be ignored when inserting a TargetHttpProxy. An
		// up-to-date fingerprint must be provided in order to
		// patch/update the TargetHttpProxy; otherwise, the request will
		// fail with error 412 conditionNotMet.
		// To see the latest fingerprint, make a get() request to retrieve
		// the TargetHttpProxy.
		// A base64-encoded string.
		fingerprint?: string

		// Specifies how long to keep a connection open, after completing
		// a response,
		// while there is no matching traffic (in seconds). If an HTTP
		// keepalive is
		// not specified, a default value will be used. For Global
		// external HTTP(S) load balancer, the default value is 610
		// seconds, the
		// minimum allowed value is 5 seconds and the maximum allowed
		// value is 1200
		// seconds. For cross-region internal HTTP(S) load balancer, the
		// default
		// value is 600 seconds, the minimum allowed value is 5 seconds,
		// and the
		// maximum allowed value is 600 seconds. For Global external
		// HTTP(S) load
		// balancer (classic), this option is not available publicly.
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
		name!: string

		// This field only applies when the forwarding rule that
		// references
		// this target proxy has a loadBalancingScheme set to
		// INTERNAL_SELF_MANAGED.
		proxy_bind?: bool
		project?:    string

		// The unique identifier for the resource.
		proxy_id?:  number
		timeouts?:  #timeouts
		self_link?: string

		// A reference to the UrlMap resource that defines the mapping
		// from URL
		// to the BackendService.
		url_map!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
