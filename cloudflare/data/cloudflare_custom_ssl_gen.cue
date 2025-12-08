package data

#cloudflare_custom_ssl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_ssl")
	close({
		// A ubiquitous bundle has the highest probability of being
		// verified everywhere, even by clients using outdated or unusual
		// trust stores. An optimal bundle uses the shortest chain and
		// newest intermediates. And the force bundle verifies the chain,
		// but does not otherwise modify it.
		// Available values: "ubiquitous", "optimal", "force".
		bundle_method?: string

		// Identifier.
		custom_certificate_id?: string

		// When the certificate from the authority expires.
		expires_on?: string

		// Specify the region where your private key can be held locally
		// for optimal TLS performance. HTTPS connections to any excluded
		// data center will still be fully encrypted, but will incur some
		// latency while Keyless SSL is used to complete the handshake
		// with the nearest allowed data center. Options allow
		// distribution to only to U.S. data centers, only to E.U. data
		// centers, or only to highest security data centers. Default
		// distribution is to all Cloudflare datacenters, for optimal
		// performance.
		geo_restrictions?: close({
			// Available values: "us", "eu", "highest_security".
			label?: string
		})
		hosts?: [...string]

		// Identifier.
		id?: string

		// The certificate authority that issued the certificate.
		issuer?: string

		// When the certificate was last modified.
		modified_on?: string

		// Specify the policy that determines the region where your
		// private key will be held locally. HTTPS connections to any
		// excluded data center will still be fully encrypted, but will
		// incur some latency while Keyless SSL is used to complete the
		// handshake with the nearest allowed data center. Any
		// combination of countries, specified by their two letter
		// country code
		// (https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements)
		// can be chosen, such as 'country: IN', as well as 'region: EU'
		// which refers to the EU region. If there are too few data
		// centers satisfying the policy, it will be rejected.
		policy?: string
		filter?: close({
			// Whether to match all search requirements or at least one (any).
			// Available values: "any", "all".
			match?: string

			// Status of the zone's custom SSL.
			// Available values: "active", "expired", "deleted", "pending",
			// "initializing".
			status?: string
		})

		// The order/priority in which the certificate will be used in a
		// request. The higher priority will break ties across
		// overlapping 'legacy_custom' certificates, but 'legacy_custom'
		// certificates will always supercede 'sni_custom' certificates.
		priority?: number

		// The type of hash used for the certificate.
		signature?: string

		// Status of the zone's custom SSL.
		// Available values: "active", "expired", "deleted", "pending",
		// "initializing".
		status?: string

		// When the certificate was uploaded to Cloudflare.
		uploaded_on?: string
		keyless_server?: close({
			// When the Keyless SSL was created.
			created_on?: string

			// Whether or not the Keyless SSL is on or off.
			enabled?: bool

			// Configuration for using Keyless SSL through a Cloudflare Tunnel
			tunnel?: close({
				// Private IP of the Key Server Host
				private_ip?: string

				// Cloudflare Tunnel Virtual Network ID
				vnet_id?: string
			})

			// The keyless SSL name.
			host?: string

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
		})

		// Identifier.
		zone_id!: string
	})
}
