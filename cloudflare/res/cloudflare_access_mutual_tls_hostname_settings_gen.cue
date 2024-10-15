package res

#cloudflare_access_mutual_tls_hostname_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_mutual_tls_hostname_settings")
	account_id?: string
	zone_id?:    string
	settings?: #settings | [...#settings]

	#settings: {
		china_network?:                 bool
		client_certificate_forwarding?: bool
		hostname!:                      string
	}
}
