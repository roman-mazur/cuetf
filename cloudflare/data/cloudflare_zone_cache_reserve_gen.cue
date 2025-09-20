package data

#cloudflare_zone_cache_reserve: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_reserve")
	close({
		// Whether the setting is editable.
		editable?: bool

		// The identifier of the caching setting.
		// Available values: "cache_reserve".
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// Value of the Cache Reserve zone setting.
		// Available values: "on", "off".
		value?: string

		// Identifier.
		zone_id!: string
	})
}
