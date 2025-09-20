package data

#cloudflare_tiered_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_tiered_cache")
	close({
		// Whether the setting is editable.
		editable?: bool

		// The identifier of the caching setting.
		// Available values: "tiered_cache_smart_topology_enable".
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// Value of the Smart Tiered Cache zone setting.
		// Available values: "on", "off".
		value?: string

		// Identifier.
		zone_id!: string
	})
}
