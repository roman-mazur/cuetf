package data

#cloudflare_mtls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_mtls_certificate")
	close({
		account_id!:          string
		ca?:                  bool
		certificates?:        string
		expires_on?:          string
		id?:                  string
		issuer?:              string
		mtls_certificate_id?: string
		name?:                string
		serial_number?:       string
		signature?:           string
		uploaded_on?:         string
	})
}
