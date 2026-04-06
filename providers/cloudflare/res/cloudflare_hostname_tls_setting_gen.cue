package res

#cloudflare_hostname_tls_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_hostname_tls_setting")
	close({
		// This is the time the tls setting was originally created for
		// this hostname.
		created_at?: string

		// The hostname for which the tls settings are set.
		hostname!: string

		// The TLS Setting name. The value type depends on the setting:
		// - `ciphers`: value is an array of cipher suite strings (e.g.,
		// `["ECDHE-RSA-AES128-GCM-SHA256", "AES128-GCM-SHA256"]`)
		// - `min_tls_version`: value is a TLS version string (`"1.0"`,
		// `"1.1"`, `"1.2"`, or `"1.3"`)
		// - `http2`: value is `"on"` or `"off"`
		// Available values: "ciphers", "min_tls_version", "http2".
		id?: string

		// The TLS Setting name. The value type depends on the setting:
		// - `ciphers`: value is an array of cipher suite strings (e.g.,
		// `["ECDHE-RSA-AES128-GCM-SHA256", "AES128-GCM-SHA256"]`)
		// - `min_tls_version`: value is a TLS version string (`"1.0"`,
		// `"1.1"`, `"1.2"`, or `"1.3"`)
		// - `http2`: value is `"on"` or `"off"`
		// Available values: "ciphers", "min_tls_version", "http2".
		setting_id!: string

		// Deployment status for the given tls setting.
		status?: string

		// This is the time the tls setting was updated.
		updated_at?: string

		// The TLS setting value. The type depends on the `setting_id`
		// used in the request path:
		// - `ciphers`: an array of allowed cipher suite strings in
		// BoringSSL format (e.g., `["ECDHE-RSA-AES128-GCM-SHA256",
		// "AES128-GCM-SHA256"]`)
		// - `min_tls_version`: a string indicating the minimum TLS
		// version — one of `"1.0"`, `"1.1"`, `"1.2"`, or `"1.3"` (e.g.,
		// `"1.2"`)
		// - `http2`: a string indicating whether HTTP/2 is enabled —
		// `"on"` or `"off"` (e.g., `"on"`)
		// Available values: "1.0", "1.1", "1.2", "1.3", "on", "off".
		value!: _

		// Identifier.
		zone_id!: string
	})
}
