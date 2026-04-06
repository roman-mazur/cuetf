package data

#google_compute_ssl_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_ssl_certificate")
	close({
		// The certificate in PEM format.
		// The certificate chain must be no greater than 5 certs long.
		// The chain must include at least one intermediate cert.
		certificate?: string

		// The unique identifier for the resource.
		certificate_id?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Expire time of the certificate in RFC3339 text format.
		expire_time?: string
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
		//
		// These are in the same namespace as the managed SSL
		// certificates.
		name!: string

		// Creates a unique name beginning with the specified prefix.
		// Conflicts with name.
		name_prefix?: string

		// The write-only private key in PEM format.
		private_key?: string

		// The write-only private key in PEM format.
		private_key_wo?: string

		// Triggers update of 'private_key_wo' write-only. Increment this
		// value when an update to 'private_key_wo' is needed. For more
		// info see [updating write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		private_key_wo_version?: string
		project?:                string
		self_link?:              string
	})
}
