package res

#cloudflare_zero_trust_gateway_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_certificate")
	account_id!:           string
	activate?:             bool
	binding_status?:       string
	created_at?:           string
	custom?:               bool
	expires_on?:           string
	gateway_managed?:      bool
	id?:                   string
	in_use?:               bool
	qs_pack_id?:           string
	uploaded_on?:          string
	validity_period_days?: number
}
