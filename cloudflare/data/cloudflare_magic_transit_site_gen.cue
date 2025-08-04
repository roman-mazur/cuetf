package data

#cloudflare_magic_transit_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_site")
	close({
		// Identifier
		account_id!: string

		// Magic Connector identifier tag.
		connector_id?: string

		// Site high availability mode. If set to true, the site can have
		// two connectors and runs in high availability mode.
		ha_mode?:     bool
		description?: string

		// Identifier
		id?: string

		// Location of site in latitude and longitude.
		location?: close({
			// Latitude
			lat?: string

			// Longitude
			lon?: string
		})

		// The name of the site.
		name?: string

		// Magic Connector identifier tag. Used when high availability
		// mode is on.
		secondary_connector_id?: string

		// Identifier
		site_id?: string
		filter?: close({
			// Identifier
			connectorid?: string
		})
	})
}
