package data

#cloudflare_origin_cloud_regions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_origin_cloud_regions")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// Identifier.
		zone_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The origin IP address (IPv4 or IPv6). Normalized to canonical
			// form (RFC 5952 for IPv6).
			id?: string

			// Time this mapping was last modified.
			modified_on?: string

			// The origin IP address (IPv4 or IPv6). Normalized to canonical
			// form (RFC 5952 for IPv6).
			origin_ip?: string

			// Cloud vendor region identifier.
			region?: string

			// Cloud vendor hosting the origin.
			// Available values: "aws", "azure", "gcp", "oci".
			vendor?: string
		}), [...close({
			// The origin IP address (IPv4 or IPv6). Normalized to canonical
			// form (RFC 5952 for IPv6).
			id?: string

			// Time this mapping was last modified.
			modified_on?: string

			// The origin IP address (IPv4 or IPv6). Normalized to canonical
			// form (RFC 5952 for IPv6).
			origin_ip?: string

			// Cloud vendor region identifier.
			region?: string

			// Cloud vendor hosting the origin.
			// Available values: "aws", "azure", "gcp", "oci".
			vendor?: string
		})]])
	})
}
