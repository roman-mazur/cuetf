package data

cloudflare_google_tag_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_google_tag_gateway")
	close({
		// Enables or disables Google Tag Gateway for this zone.
		enabled?: bool

		// Specifies the endpoint path for proxying Google Tag Manager requests. Use an
		// absolute path starting with '/', with no nested paths and alphanumeric
		// characters only (e.g. /metrics).
		endpoint?: string

		// Hides the original client IP address from Google when enabled.
		hide_original_ip?: bool

		// Identifier.
		id?: string

		// Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
		measurement_id?: string

		// Set up the associated Google Tag on the zone automatically when enabled.
		set_up_tag?: bool

		// Identifier.
		zone_id!: string
	})
}
