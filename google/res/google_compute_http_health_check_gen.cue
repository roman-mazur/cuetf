package res

#google_compute_http_health_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_http_health_check")
	close({
		// How often (in seconds) to send a health check. The default
		// value is 5
		// seconds.
		check_interval_sec?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// A so-far unhealthy instance will be marked healthy after this
		// many
		// consecutive successes. The default value is 2.
		healthy_threshold?: number

		// The value of the host header in the HTTP health check request.
		// If
		// left empty (default value), the public IP on behalf of which
		// this
		// health check is performed will be used.
		host?: string
		id?:   string

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
		// the
		// last character, which cannot be a dash.
		name!: string

		// The TCP port number for the HTTP health check request.
		// The default value is 80.
		port?: number

		// The request path of the HTTP health check request.
		// The default value is /.
		request_path?: string
		timeouts?:     #timeouts
		project?:      string

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to
		// have
		// greater value than checkIntervalSec.
		timeout_sec?: number
		self_link?:   string

		// A so-far healthy instance will be marked unhealthy after this
		// many
		// consecutive failures. The default value is 2.
		unhealthy_threshold?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
