package data

cloudflare_nel_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_nel_setting")
	close({
		// Whether the setting is editable. This is false when the zone's plan does not
		// include NEL or the NEL product feature is not enabled.
		editable?: bool

		// Identifier of the zone.
		id?: string

		// When the setting was last modified. A zero value (0001-01-01T00:00:00Z)
		// indicates the setting has never been explicitly set and is using the default
		// value.
		modified_on?: string

		// The NEL configuration value.
		value?: close({
			// Whether Network Error Logging is enabled for the zone. When enabled, browsers
			// report network errors to Cloudflare's NEL endpoint.
			enabled?: bool
		})

		// Identifier of the zone.
		zone_id!: string
	})
}
