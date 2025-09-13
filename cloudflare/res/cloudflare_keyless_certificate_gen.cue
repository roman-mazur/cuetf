package res

#cloudflare_keyless_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_keyless_certificate")
	close({
		// A ubiquitous bundle has the highest probability of being
		// verified everywhere, even by clients using outdated or unusual
		// trust stores. An optimal bundle uses the shortest chain and
		// newest intermediates. And the force bundle verifies the chain,
		// but does not otherwise modify it.
		// Available values: "ubiquitous", "optimal", "force".
		bundle_method?: string

		// The zone's SSL certificate or SSL certificate and
		// intermediate(s).
		certificate!: string

		// When the Keyless SSL was created.
		created_on?: string

		// Configuration for using Keyless SSL through a Cloudflare Tunnel
		tunnel?: close({
			// Private IP of the Key Server Host
			private_ip!: string

			// Cloudflare Tunnel Virtual Network ID
			vnet_id!: string
		})

		// The keyless SSL name.
		host!: string

		// Keyless certificate identifier tag.
		id?: string

		// When the Keyless SSL was last modified.
		modified_on?: string

		// The keyless SSL name.
		name?: string

		// Available permissions for the Keyless SSL for the current user
		// requesting the item.
		permissions?: [...string]

		// The keyless SSL port used to communicate between Cloudflare and
		// the client's Keyless SSL server.
		port?: number

		// Status of the Keyless SSL.
		// Available values: "active", "deleted".
		status?: string

		// Identifier.
		zone_id!: string
	})
}
