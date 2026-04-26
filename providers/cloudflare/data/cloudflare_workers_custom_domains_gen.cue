package data

#cloudflare_workers_custom_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_custom_domains")
	close({
		// Identifier.
		account_id?: string

		// Worker environment associated with the domain.
		environment?: string

		// Hostname of the domain.
		hostname?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Name of the Worker associated with the domain.
		service?: string

		// ID of the zone containing the domain hostname.
		zone_id?: string

		// Name of the zone containing the domain hostname.
		zone_name?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// ID of the TLS certificate issued for the domain.
			cert_id?: string

			// Hostname of the domain. Can be either the zone apex or a
			// subdomain of the zone. Requests to this hostname will be
			// routed to the configured Worker.
			hostname?: string

			// Immutable ID of the domain.
			id?: string

			// Name of the Worker associated with the domain. Requests to the
			// configured hostname will be routed to this Worker.
			service?: string

			// ID of the zone containing the domain hostname.
			zone_id?: string

			// Name of the zone containing the domain hostname.
			zone_name?: string
		}), [...close({
			// ID of the TLS certificate issued for the domain.
			cert_id?: string

			// Hostname of the domain. Can be either the zone apex or a
			// subdomain of the zone. Requests to this hostname will be
			// routed to the configured Worker.
			hostname?: string

			// Immutable ID of the domain.
			id?: string

			// Name of the Worker associated with the domain. Requests to the
			// configured hostname will be routed to this Worker.
			service?: string

			// ID of the zone containing the domain hostname.
			zone_id?: string

			// Name of the zone containing the domain hostname.
			zone_name?: string
		})]])
	})
}
