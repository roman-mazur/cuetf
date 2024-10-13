package res

#cloudflare_access_mutual_tls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_mutual_tls_certificate")
	account_id?: string
	associated_hostnames?: [...string]
	certificate?: string
	fingerprint?: string
	id?:          string
	name!:        string
	zone_id?:     string
}
