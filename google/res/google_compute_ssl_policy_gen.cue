package res

#google_compute_ssl_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_ssl_policy")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Profile specifies the set of SSL features that can be used by
		// the
		// load balancer when negotiating SSL with clients. This can be
		// one of
		// 'COMPATIBLE', 'MODERN', 'RESTRICTED', or 'CUSTOM'. If using
		// 'CUSTOM',
		// the set of SSL features to enable must be specified in the
		// 'customFeatures' field.
		//
		// See the [official
		// documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
		// for which ciphers are available to use. **Note**: this argument
		// *must* be present when using the 'CUSTOM' profile. This
		// argument
		// *must not* be present when using any other profile.
		custom_features?: [...string]

		// An optional description of this resource.
		description?: string

		// The list of features enabled in the SSL policy.
		enabled_features?: [...string]

		// Fingerprint of this resource. A hash of the contents stored in
		// this
		// object. This field is used in optimistic locking.
		fingerprint?: string
		id?:          string

		// The minimum version of SSL protocol that can be used by the
		// clients
		// to establish a connection with the load balancer. When set to'
		// TLS_1_3', the profile field must be set to 'RESTRICTED'.
		// Default value: "TLS_1_0" Possible values: ["TLS_1_0",
		// "TLS_1_1", "TLS_1_2", "TLS_1_3"]
		min_tls_version?: string

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
		name!:     string
		timeouts?: #timeouts

		// Profile specifies the set of SSL features that can be used by
		// the
		// load balancer when negotiating SSL with clients. If using
		// 'CUSTOM',
		// the set of SSL features to enable must be specified in the
		// 'customFeatures' field.
		//
		// See the [official
		// documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
		// for information on what cipher suites each profile provides. If
		// 'CUSTOM' is used, the 'custom_features' attribute **must be
		// set**.
		// If set to 'FIPS_202205', 'minTlsVersion' must also be set to
		// 'TLS_1_2'. Default value: "COMPATIBLE" Possible values:
		// ["COMPATIBLE", "MODERN", "RESTRICTED", "CUSTOM",
		// "FIPS_202205"]
		profile?:   string
		project?:   string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
