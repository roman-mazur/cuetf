package res

#google_network_security_backend_authentication_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_backend_authentication_config")
	close({
		// Reference to a Certificate resource from the
		// certificatemanager.googleapis.com namespace.
		// Used by a BackendService to negotiate mTLS when the backend
		// connection uses TLS and the backend requests a client
		// certificate. Must have a CLIENT_AUTH scope.
		client_certificate?: string

		// Time the BackendAuthenticationConfig was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Set of label tags associated with the
		// BackendAuthenticationConfig resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the backend authentication config.
		// The default value is 'global'.
		location?: string

		// Name of the BackendAuthenticationConfig resource.
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		timeouts?: #timeouts
		project?:  string

		// Reference to a TrustConfig resource from the
		// certificatemanager.googleapis.com namespace.
		// A BackendService uses the chain of trust represented by this
		// TrustConfig, if specified, to validate the server certificates
		// presented by the backend. Required unless wellKnownRoots is
		// set to PUBLIC_ROOTS.
		trust_config?: string

		// Time the BackendAuthenticationConfig was updated in UTC.
		update_time?: string

		// Well known roots to use for server certificate validation. If
		// set to NONE, the BackendService will only validate server
		// certificates against roots specified in TrustConfig.
		// If set to PUBLIC_ROOTS, the BackendService uses a set of
		// well-known public roots, in addition to any roots specified in
		// the trustConfig field, when validating the server certificates
		// presented by the backend.
		// Validation with these roots is only considered when the
		// TlsSettings.sni field in the BackendService is set. The
		// well-known roots are a set of root CAs managed by Google. CAs
		// in this set can be added or removed without notice. Possible
		// values: ["NONE", "PUBLIC_ROOTS"]
		well_known_roots?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
