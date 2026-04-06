package data

#cloudflare_argo_tiered_caching: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_argo_tiered_caching")
	close({
		// Whether the setting is editable.
		editable?: bool

		// Identifier.
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// Value of the Tiered Cache zone setting.
		// Available values: "on", "off".
		value?: string

		// Identifier.
		zone_id!: string
	})
}
