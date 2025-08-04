package data

#cloudflare_zone_cache_variants: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_variants")
	close({
		// Whether the setting is editable
		editable?: bool

		// ID of the zone setting.
		// Available values: "variants".
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// The value of the feature
		value?: string

		// Identifier
		zone_id!: string
	})
}
