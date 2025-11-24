package res

#google_compute_target_ssl_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_target_ssl_proxy")
	close({
		// A reference to the BackendService resource.
		backend_service!: string

		// A reference to the CertificateMap resource uri that identifies
		// a certificate map
		// associated with the given target proxy. This field can only be
		// set for global target proxies.
		// Accepted format is
		// '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}'.
		certificate_map?: string

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

		// Specifies the type of proxy header to append before sending
		// data to
		// the backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The unique identifier for the resource.
		proxy_id?:  number
		self_link?: string
		timeouts?:  #timeouts

		// A list of SslCertificate resources that are used to
		// authenticate
		// connections between users and the load balancer. At least one
		// SSL certificate must be specified.
		ssl_certificates?: [...string]

		// A reference to the SslPolicy resource that will be associated
		// with
		// the TargetSslProxy resource. If not set, the TargetSslProxy
		// resource will not have any SSL policy configured.
		ssl_policy?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
