package res

#google_sql_ssl_cert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_sql_ssl_cert")
	close({
		// The actual certificate data for this client certificate.
		cert?: string

		// The serial number extracted from the certificate data.
		cert_serial_number?: string

		// The common name to be used in the certificate to identify the
		// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a
		// new resource to be created.
		common_name!: string

		// The time when the certificate was created in RFC 3339 format,
		// for example 2012-11-15T16:19:00.094Z.
		create_time?: string

		// The time when the certificate expires in RFC 3339 format, for
		// example 2012-11-15T16:19:00.094Z.
		expiration_time?: string

		// The name of the Cloud SQL instance. Changing this forces a new
		// resource to be created.
		instance!: string

		// The private key associated with the client certificate.
		private_key?: string
		id?:          string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?:  string
		timeouts?: #timeouts

		// The CA cert of the server this client cert was generated from.
		server_ca_cert?: string

		// The SHA1 Fingerprint of the certificate.
		sha1_fingerprint?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
