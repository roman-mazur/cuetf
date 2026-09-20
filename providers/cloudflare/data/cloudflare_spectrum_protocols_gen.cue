package data

cloudflare_spectrum_protocols: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_spectrum_protocols")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The full name of the application protocol.
			description?: string

			// The short name of the application protocol.
			name?: string

			// The available listening ports for the given protocol.
			ports?: [...number]

			// The transport layer protocol used by the application protocol
			transport?: string
		}), [...close({
			// The full name of the application protocol.
			description?: string

			// The short name of the application protocol.
			name?: string

			// The available listening ports for the given protocol.
			ports?: [...number]

			// The transport layer protocol used by the application protocol
			transport?: string
		})]])

		// Zone identifier.
		zone_id!: string
	})
}
