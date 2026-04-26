package res

#cloudflare_workers_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_workers_custom_domain")
	close({
		// Identifier.
		account_id?: string

		// ID of the TLS certificate issued for the domain.
		cert_id?: string

		// Hostname of the domain. Can be either the zone apex or a
		// subdomain of the zone. Requests to this hostname will be
		// routed to the configured Worker.
		hostname!: string

		// Immutable ID of the domain.
		id?: string

		// Name of the Worker associated with the domain. Requests to the
		// configured hostname will be routed to this Worker.
		service!: string

		// ID of the zone containing the domain hostname.
		zone_id?: string

		// Name of the zone containing the domain hostname.
		zone_name?: string
	})
}
