package res

#cloudflare_access_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_ca_certificate")
	account_id?:    string
	application_id: string
	aud?:           string
	id?:            string
	public_key?:    string
	zone_id?:       string
}
