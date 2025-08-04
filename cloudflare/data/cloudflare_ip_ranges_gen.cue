package data

#cloudflare_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_ip_ranges")
	close({
		// A digest of the IP data. Useful for determining if the data has
		// changed.
		etag?: string

		// List of Cloudflare IPv4 CIDR addresses.
		ipv4_cidrs?: [...string]

		// List of Cloudflare IPv6 CIDR addresses.
		ipv6_cidrs?: [...string]

		// List IPv4 and IPv6 CIDRs, only populated if `?networks=jdcloud`
		// is used.
		jdcloud_cidrs?: [...string]

		// Specified as `jdcloud` to list IPs used by JD Cloud data
		// centers.
		networks?: string
	})
}
