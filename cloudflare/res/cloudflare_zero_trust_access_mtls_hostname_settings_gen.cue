package res

#cloudflare_zero_trust_access_mtls_hostname_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_access_mtls_hostname_settings")
	account_id?: string
	zone_id?:    string
	settings?: #settings | [...#settings]

	#settings: {
		china_network?:                 bool
		client_certificate_forwarding?: bool
		hostname!:                      string
	}
}
