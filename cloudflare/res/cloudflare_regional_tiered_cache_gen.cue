package res

#cloudflare_regional_tiered_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_regional_tiered_cache")
	close({
		// Whether the setting is editable
		editable?: bool

		// Identifier
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// Value of the Regional Tiered Cache zone setting.
		// Available values: "on", "off".
		value?: string

		// Identifier
		zone_id!: string
	})
}
