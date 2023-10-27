package res

#cloudflare_hostname_tls_setting_ciphers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_hostname_tls_setting_ciphers")
	created_at?: string
	hostname:    string
	id?:         string
	ports?: [...number]
	updated_at?: string
	value: [...string]
	zone_id: string
}
