package data

#cloudflare_zero_trust_gateway_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_certificates")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			binding_status?: string
			certificate?:    string
			created_at?:     string
			expires_on?:     string
			fingerprint?:    string
			id?:             string
			in_use?:         bool
			issuer_org?:     string
			issuer_raw?:     string
			type?:           string
			updated_at?:     string
			uploaded_on?:    string
		}), [...close({
			binding_status?: string
			certificate?:    string
			created_at?:     string
			expires_on?:     string
			fingerprint?:    string
			id?:             string
			in_use?:         bool
			issuer_org?:     string
			issuer_raw?:     string
			type?:           string
			updated_at?:     string
			uploaded_on?:    string
		})]])
	})
}
