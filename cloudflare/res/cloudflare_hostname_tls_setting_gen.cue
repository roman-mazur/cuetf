package res

#cloudflare_hostname_tls_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_hostname_tls_setting")
	created_at?: string
	hostname:    string
	id?:         string
	setting:     string
	updated_at?: string
	value:       string
	zone_id:     string
}
