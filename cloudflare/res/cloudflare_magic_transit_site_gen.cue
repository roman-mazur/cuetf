package res

#cloudflare_magic_transit_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_site")
	close({
		// Identifier
		account_id!: string

		// Location of site in latitude and longitude.
		location?: close({
			// Latitude
			lat?: string

			// Longitude
			lon?: string
		})

		// Magic Connector identifier tag.
		connector_id?: string

		// Site high availability mode. If set to true, the site can have
		// two connectors and runs in high availability mode.
		ha_mode?: bool

		// Identifier
		id?:          string
		description?: string

		// The name of the site.
		name!: string

		// Magic Connector identifier tag. Used when high availability
		// mode is on.
		secondary_connector_id?: string
	})
}
