package data

#cloudflare_hostname_tls_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_hostname_tls_setting")
	close({
		created_at?: string
		hostname?:   string
		setting_id!: string
		status?:     string
		updated_at?: string
		value?:      number
		zone_id!:    string
	})
}
