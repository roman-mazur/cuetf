package res

#google_kms_ekm_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_ekm_connection")
	close({
		// Output only. The time at which the EkmConnection was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Optional. Identifies the EKM Crypto Space that this
		// EkmConnection maps to. Note: This field is required if
		// KeyManagementMode is CLOUD_KMS.
		crypto_space_path?: string

		// Optional. Etag of the currently stored EkmConnection.
		etag?: string
		id?:   string

		// Optional. Describes who can perform control plane operations on
		// the EKM. If unset, this defaults to MANUAL Default value:
		// "MANUAL" Possible values: ["MANUAL", "CLOUD_KMS"]
		key_management_mode?: string
		service_resolvers!: matchN(1, [#service_resolvers, [_, ...] & [...#service_resolvers]])

		// The location for the EkmConnection.
		// A full list of valid locations can be found by running 'gcloud
		// kms locations list'.
		location!: string

		// The resource name for the EkmConnection.
		name!:     string
		timeouts?: #timeouts
		project?:  string
	})

	#service_resolvers: close({
		// Optional. The filter applied to the endpoints of the resolved
		// service. If no filter is specified, all endpoints will be
		// considered. An endpoint will be chosen arbitrarily from the
		// filtered list for each request. For endpoint filter syntax and
		// examples, see
		// https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
		endpoint_filter?: string
		server_certificates!: matchN(1, [_#defs."/$defs/service_resolvers/$defs/server_certificates", [_, ...] & [..._#defs."/$defs/service_resolvers/$defs/server_certificates"]])

		// Required. The hostname of the EKM replica used at TLS and HTTP
		// layers.
		hostname!: string

		// Required. The resource name of the Service Directory service
		// pointing to an EKM replica, in the format
		// projects/*/locations/*/namespaces/*/services/*
		service_directory_service!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/service_resolvers/$defs/server_certificates": close({
		// Output only. The issuer distinguished name in RFC 2253 format.
		// Only present if parsed is true.
		issuer?: string

		// Output only. The certificate is not valid after this time. Only
		// present if parsed is true.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		not_after_time?: string

		// Output only. The certificate is not valid before this time.
		// Only present if parsed is true.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		not_before_time?: string

		// Output only. True if the certificate was parsed successfully.
		parsed?: bool

		// Required. The raw certificate bytes in DER format. A
		// base64-encoded string.
		raw_der!: string

		// Output only. The certificate serial number as a hex string.
		// Only present if parsed is true.
		serial_number?: string

		// Output only. The SHA-256 certificate fingerprint as a hex
		// string. Only present if parsed is true.
		sha256_fingerprint?: string

		// Output only. The subject distinguished name in RFC 2253 format.
		// Only present if parsed is true.
		subject?: string

		// Output only. The subject Alternative DNS names. Only present if
		// parsed is true.
		subject_alternative_dns_names?: [...string]
	})
}
