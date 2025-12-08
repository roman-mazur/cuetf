package data

#cloudflare_workers_custom_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_custom_domains")
	close({
		// Identifer of the account.
		account_id!: string

		// Worker environment associated with the zone and hostname.
		environment?: string

		// Hostname of the Worker Domain.
		hostname?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Hostname of the Worker Domain.
			hostname?: string

			// Identifer of the Worker Domain.
			id?: string

			// Worker service associated with the zone and hostname.
			service?: string

			// Identifier of the zone.
			zone_id?: string

			// Name of the zone.
			zone_name?: string
		}), [...close({
			// Hostname of the Worker Domain.
			hostname?: string

			// Identifer of the Worker Domain.
			id?: string

			// Worker service associated with the zone and hostname.
			service?: string

			// Identifier of the zone.
			zone_id?: string

			// Name of the zone.
			zone_name?: string
		})]])

		// Worker service associated with the zone and hostname.
		service?: string

		// Identifier of the zone.
		zone_id?: string

		// Name of the zone.
		zone_name?: string
	})
}
