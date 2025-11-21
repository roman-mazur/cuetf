package data

#cloudflare_hostname_tls_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_hostname_tls_setting")
	close({
		// This is the time the tls setting was originally created for
		// this hostname.
		created_at?: string

		// The hostname for which the tls settings are set.
		hostname?: string

		// The TLS Setting name.
		// Available values: "ciphers", "min_tls_version", "http2".
		id?: string

		// The TLS Setting name.
		// Available values: "ciphers", "min_tls_version", "http2".
		setting_id!: string

		// Deployment status for the given tls setting.
		status?: string

		// This is the time the tls setting was updated.
		updated_at?: string

		// The tls setting value.
		value?: number

		// Identifier.
		zone_id!: string
	})
}
