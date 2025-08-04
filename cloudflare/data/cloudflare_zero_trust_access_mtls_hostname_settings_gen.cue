package data

#cloudflare_zero_trust_access_mtls_hostname_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_mtls_hostname_settings")
	close({
		account_id?:                    string
		china_network?:                 bool
		client_certificate_forwarding?: bool
		hostname?:                      string
		zone_id?:                       string
	})
}
