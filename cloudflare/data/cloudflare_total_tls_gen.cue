package data

#cloudflare_total_tls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_total_tls")
	close({
		// The Certificate Authority that Total TLS certificates will be
		// issued through.
		// Available values: "google", "lets_encrypt", "ssl_com".
		certificate_authority?: string

		// If enabled, Total TLS will order a hostname specific TLS
		// certificate for any proxied A, AAAA, or CNAME record in your
		// zone.
		enabled?: bool

		// The validity period in days for the certificates ordered via
		// Total TLS.
		// Available values: 90.
		validity_period?: number

		// Identifier.
		zone_id!: string
	})
}
