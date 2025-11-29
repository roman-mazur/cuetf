package res

#google_network_security_tls_inspection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_tls_inspection_policy")
	close({
		// A CA pool resource used to issue interception certificates.
		ca_pool!: string

		// The timestamp when the resource was created.
		create_time?: string

		// List of custom TLS cipher suites selected. This field is valid
		// only if the selected tls_feature_profile is CUSTOM. The
		// compute.SslPoliciesService.ListAvailableFeatures method
		// returns the set of features that can be specified in this
		// list. Note that Secure Web Proxy does not yet honor this
		// field.
		custom_tls_features?: [...string]

		// Free-text description of the resource.
		description?: string

		// If FALSE (the default), use our default set of public CAs in
		// addition to any CAs specified in trustConfig. These public CAs
		// are currently based on the Mozilla Root Program and are
		// subject to change over time. If TRUE, do not accept our
		// default set of public CAs. Only CAs specified in trustConfig
		// will be accepted.
		exclude_public_ca_set?: bool
		id?:                    string

		// The location of the tls inspection policy.
		location?: string

		// Minimum TLS version that the firewall should use when
		// negotiating connections with both clients and servers. If this
		// is not set, then the default value is to allow the broadest
		// set of clients and servers (TLS 1.0 or higher). Setting this
		// to more restrictive values may improve security, but may also
		// prevent the firewall from connecting to some clients or
		// servers. Note that Secure Web Proxy does not yet honor this
		// field. Default value: "TLS_VERSION_UNSPECIFIED" Possible
		// values: ["TLS_VERSION_UNSPECIFIED", "TLS_1_0", "TLS_1_1",
		// "TLS_1_2", "TLS_1_3"]
		min_tls_version?: string

		// Short name of the TlsInspectionPolicy resource to be created.
		name!:     string
		timeouts?: #timeouts

		// The selected Profile. If this is not set, then the default
		// value is to allow the broadest set of clients and servers
		// (\"PROFILE_COMPATIBLE\"). Setting this to more restrictive
		// values may improve security, but may also prevent the TLS
		// inspection proxy from connecting to some clients or servers.
		// Note that Secure Web Proxy does not yet honor this field.
		// Default value: "PROFILE_UNSPECIFIED" Possible values:
		// ["PROFILE_UNSPECIFIED", "PROFILE_COMPATIBLE",
		// "PROFILE_MODERN", "PROFILE_RESTRICTED", "PROFILE_CUSTOM"]
		tls_feature_profile?: string
		project?:             string

		// A TrustConfig resource used when making a connection to the TLS
		// server. This is a relative resource path following the form
		// \"projects/{project}/locations/{location}/trustConfigs/{trust_config}\".
		// This is necessary to intercept TLS connections to servers with
		// certificates signed by a private CA or self-signed
		// certificates. Trust config and the TLS inspection policy must
		// be in the same region. Note that Secure Web Proxy does not yet
		// honor this field.
		trust_config?: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
