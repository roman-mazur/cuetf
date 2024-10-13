package res

#cloudflare_authenticated_origin_pulls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_authenticated_origin_pulls_certificate")
	certificate!:   string
	expires_on?:    string
	id?:            string
	issuer?:        string
	private_key!:   string
	serial_number?: string
	signature?:     string
	status?:        string
	type!:          string
	uploaded_on?:   string
	zone_id!:       string
	timeouts?:      #timeouts

	#timeouts: create?: string
}
