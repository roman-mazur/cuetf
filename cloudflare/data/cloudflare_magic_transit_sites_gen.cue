package data

#cloudflare_magic_transit_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_sites")
	close({
		// Identifier
		account_id!: string

		// Identifier
		connectorid?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Location of site in latitude and longitude.
			location?: close({
				// Latitude
				lat?: string

				// Longitude
				lon?: string
			})

			// Magic Connector identifier tag.
			connector_id?: string
			description?:  string

			// Site high availability mode. If set to true, the site can have
			// two connectors and runs in high availability mode.
			ha_mode?: bool

			// Identifier
			id?: string

			// The name of the site.
			name?: string

			// Magic Connector identifier tag. Used when high availability
			// mode is on.
			secondary_connector_id?: string
		}), [...close({
			// Location of site in latitude and longitude.
			location?: close({
				// Latitude
				lat?: string

				// Longitude
				lon?: string
			})

			// Magic Connector identifier tag.
			connector_id?: string
			description?:  string

			// Site high availability mode. If set to true, the site can have
			// two connectors and runs in high availability mode.
			ha_mode?: bool

			// Identifier
			id?: string

			// The name of the site.
			name?: string

			// Magic Connector identifier tag. Used when high availability
			// mode is on.
			secondary_connector_id?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number
	})
}
