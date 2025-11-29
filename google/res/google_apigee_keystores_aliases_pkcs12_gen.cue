package res

#google_apigee_keystores_aliases_pkcs12: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_keystores_aliases_pkcs12")
	close({
		// Alias Name
		alias!: string

		// Chain of certificates under this alias.
		certs_info?: [...close({
			cert_info?: [...close({
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
		})]

		// Environment associated with the alias
		environment!: string

		// Cert content
		file!: string

		// Hash of the pkcs file
		filehash!: string
		id?:       string

		// Keystore Name
		keystore!: string
		timeouts?: #timeouts

		// Organization ID associated with the alias
		org_id!: string

		// Password for the Private Key if it's encrypted
		password?: string

		// Optional.Type of Alias
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
