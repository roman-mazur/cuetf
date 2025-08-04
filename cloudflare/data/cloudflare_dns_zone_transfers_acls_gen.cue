package data

#cloudflare_dns_zone_transfers_acls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_acls")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			id?: string

			// Allowed IPv4/IPv6 address range of primary or secondary
			// nameservers. This will be applied for the entire account. The
			// IP range is used to allow additional NOTIFY IPs for secondary
			// zones and IPs Cloudflare allows AXFR/IXFR requests from for
			// primary zones. CIDRs are limited to a maximum of /24 for IPv4
			// and /64 for IPv6 respectively.
			ip_range?: string

			// The name of the acl.
			name?: string
		}), [...close({
			id?: string

			// Allowed IPv4/IPv6 address range of primary or secondary
			// nameservers. This will be applied for the entire account. The
			// IP range is used to allow additional NOTIFY IPs for secondary
			// zones and IPs Cloudflare allows AXFR/IXFR requests from for
			// primary zones. CIDRs are limited to a maximum of /24 for IPv4
			// and /64 for IPv6 respectively.
			ip_range?: string

			// The name of the acl.
			name?: string
		})]])
	})
}
