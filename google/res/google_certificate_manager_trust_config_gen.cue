package res

#google_certificate_manager_trust_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_certificate_manager_trust_config")
	close({
		// The creation timestamp of a TrustConfig.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// One or more paragraphs of text description of a trust config.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of label tags associated with the trust config.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The trust config location.
		location!: string

		// A user-defined name of the trust config. Trust config names
		// must be unique globally.
		name!:    string
		project?: string
		allowlisted_certificates?: matchN(1, [#allowlisted_certificates, [...#allowlisted_certificates]])
		timeouts?: #timeouts
		trust_stores?: matchN(1, [#trust_stores, [...#trust_stores]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The last update timestamp of a TrustConfig.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#allowlisted_certificates: close({
		// PEM certificate that is allowlisted. The certificate can be up
		// to 5k bytes, and must be a parseable X.509 certificate.
		pem_certificate!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#trust_stores: close({
		intermediate_cas?: matchN(1, [_#defs."/$defs/trust_stores/$defs/intermediate_cas", [..._#defs."/$defs/trust_stores/$defs/intermediate_cas"]])
		trust_anchors?: matchN(1, [_#defs."/$defs/trust_stores/$defs/trust_anchors", [..._#defs."/$defs/trust_stores/$defs/trust_anchors"]])
	})

	_#defs: "/$defs/trust_stores/$defs/intermediate_cas": close({
		// PEM intermediate certificate used for building up paths for
		// validation.
		// Each certificate provided in PEM format may occupy up to 5kB.
		pem_certificate?: string
	})

	_#defs: "/$defs/trust_stores/$defs/trust_anchors": close({
		// PEM root certificate of the PKI used for validation.
		// Each certificate provided in PEM format may occupy up to 5kB.
		pem_certificate?: string
	})
}
