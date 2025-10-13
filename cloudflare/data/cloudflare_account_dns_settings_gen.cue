package data

#cloudflare_account_dns_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_dns_settings")
	close({
		// Identifier.
		account_id!: string
		zone_defaults?: close({
			// Whether to flatten all CNAME records in the zone. Note that,
			// due to DNS limitations, a CNAME record at the zone apex will
			// always be flattened.
			flatten_all_cnames?: bool

			// Settings for this internal zone.
			internal_dns?: close({
				// The ID of the zone to fallback to.
				reference_zone_id?: string
			})

			// Whether to enable Foundation DNS Advanced Nameservers on the
			// zone.
			foundation_dns?: bool

			// Settings determining the nameservers through which the zone
			// should be available.
			nameservers?: close({
				// Nameserver type
				// Available values: "cloudflare.standard",
				// "cloudflare.standard.random", "custom.account",
				// "custom.tenant".
				type?: string
			})

			// Whether to enable multi-provider DNS, which causes Cloudflare
			// to activate the zone even when non-Cloudflare NS records
			// exist, and to respect NS records at the zone apex during
			// outbound zone transfers.
			multi_provider?: bool

			// The time to live (TTL) of the zone's nameserver (NS) records.
			ns_ttl?: number

			// Allows a Secondary DNS zone to use (proxied) override records
			// and CNAME flattening at the zone apex.
			secondary_overrides?: bool

			// Components of the zone's SOA record.
			soa?: close({
				// Time in seconds of being unable to query the primary server
				// after which secondary servers should stop serving the zone.
				expire?: number

				// The time to live (TTL) for negative caching of records within
				// the zone.
				min_ttl?: number

				// The primary nameserver, which may be used for outbound zone
				// transfers. If null, a Cloudflare-assigned value will be used.
				mname?: string

				// Time in seconds after which secondary servers should re-check
				// the SOA record to see if the zone has been updated.
				refresh?: number

				// Time in seconds after which secondary servers should retry
				// queries after the primary server was unresponsive.
				retry?: number

				// The email address of the zone administrator, with the first
				// label representing the local part of the email address.
				rname?: string

				// The time to live (TTL) of the SOA record itself.
				ttl?: number
			})

			// Whether the zone mode is a regular or CDN/DNS only zone.
			// Available values: "standard", "cdn_only", "dns_only".
			zone_mode?: string
		})
	})
}
