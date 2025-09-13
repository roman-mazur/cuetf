package res

#google_apigee_keystores_aliases_key_cert_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_keystores_aliases_key_cert_file")
	close({
		// Alias Name.
		alias!: string

		// Cert content.
		cert!: string

		// Chain of certificates under this alias.
		certs_info?: [...close({
			basic_constraints?: string
			expiry_date?:       string
			is_valid?:          string
			issuer?:            string
			public_key?:        string
			serial_number?:     string
			sig_alg_name?:      string
			subject?:           string
			subject_alternative_names?: [...string]
			valid_from?: string
			version?:    number
		})]

		// Environment associated with the alias.
		environment!: string

		// Project identifier
		id?: string

		// Private Key content, omit if uploading to truststore.
		key?: string

		// Keystore Name.
		keystore!: string
		timeouts?: #timeouts

		// Organization ID associated with the alias.
		org_id!: string

		// Password for the Private Key if it's encrypted.
		password?: string

		// Optional. Type of Alias.
		type?: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours). Read
		// operations occur during any refresh or planning operation when
		// refresh is enabled.
		read?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
