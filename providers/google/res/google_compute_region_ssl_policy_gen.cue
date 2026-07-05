package res

google_compute_region_ssl_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_ssl_policy")
	close({
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// A list of features enabled when the selected profile is CUSTOM. The
		// method returns the set of features that can be specified in this
		// list. This field must be empty if the profile is not CUSTOM.
		//
		// See the [official
		// documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
		// for which ciphers are available to use. **Note**: this argument
		// *must* be present when using the 'CUSTOM' profile. This argument
		// *must not* be present when using any other profile.
		custom_features?: [...string]

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string

		// The list of features enabled in the SSL policy.
		enabled_features?: [...string]

		// Fingerprint of this resource. A hash of the contents stored in this
		// object. This field is used in optimistic locking.
		fingerprint?: string
		id?:          string

		// The minimum version of SSL protocol that can be used by the clients
		// to establish a connection with the load balancer. When set to
		// 'TLS_1_3', the profile field must be set to 'RESTRICTED'. Default value:
		// "TLS_1_0" Possible values: ["TLS_1_0", "TLS_1_1", "TLS_1_2", "TLS_1_3"]
		min_tls_version?: string

		// Name of the resource. Provided by the client when the resource is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except the last
		// character, which cannot be a dash.
		name!: string

		// One of 'DEFAULT', 'ENABLED', or 'DEFERRED'. Controls whether the load balancer negotiates
		// X25519MLKEM768 key exchange when clients advertise support for it.
		// When set to 'DEFAULT', or if no SSL Policy is attached to
		// the target proxy, the load balancer disallows X25519MLKEM768 key
		// exchange before October 2026, and allows it afterward. When set to
		// 'ENABLED', the load balancer allows X25519MLKEM768 key
		// exchange. When set to 'DEFERRED', the load balancer
		// disallows X25519MLKEM768 key exchange until October 2027, and allows
		// it afterward. Possible values: ["DEFAULT", "ENABLED", "DEFERRED"]
		post_quantum_key_exchange?: string

		// Profile specifies the set of SSL features that can be used by the
		// load balancer when negotiating SSL with clients. If using 'CUSTOM',
		// the set of SSL features to enable must be specified in the
		// 'customFeatures' field.
		//
		// See the [official
		// documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
		// for information on what cipher suites each profile provides. If
		// 'CUSTOM' is used, the 'custom_features' attribute **must be set**.
		// If set to 'FIPS_202205', 'minTlsVersion' must also be set to
		// 'TLS_1_2'. Default value: "COMPATIBLE" Possible values: ["COMPATIBLE",
		// "MODERN", "RESTRICTED", "CUSTOM", "FIPS_202205"]
		profile?: string

		// The region where the regional SSL policy resides.
		region?:    string
		project?:   string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
