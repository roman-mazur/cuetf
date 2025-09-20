package res

#cloudflare_url_normalization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_url_normalization_settings")
	close({
		// The unique ID of the zone.
		id?: string

		// The scope of the URL normalization.
		// Available values: "incoming", "both", "none".
		scope!: string

		// The type of URL normalization performed by Cloudflare.
		// Available values: "cloudflare", "rfc3986".
		type!: string

		// The unique ID of the zone.
		zone_id!: string
	})
}
