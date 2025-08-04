package data

#cloudflare_mtls_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_mtls_certificates")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			ca?:            bool
			certificates?:  string
			expires_on?:    string
			id?:            string
			issuer?:        string
			name?:          string
			serial_number?: string
			signature?:     string
			uploaded_on?:   string
		}), [...close({
			ca?:            bool
			certificates?:  string
			expires_on?:    string
			id?:            string
			issuer?:        string
			name?:          string
			serial_number?: string
			signature?:     string
			uploaded_on?:   string
		})]])
	})
}
