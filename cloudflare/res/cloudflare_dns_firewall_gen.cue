package res

#cloudflare_dns_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_firewall")
	close({
		// Identifier.
		account_id!: string

		// Whether to refuse to answer queries for the ANY type
		deprecate_any_requests?: bool
		dns_firewall_ips?: [...string]

		// Attack mitigation settings
		attack_mitigation?: close({
			// When enabled, automatically mitigate random-prefix attacks to
			// protect upstream DNS servers
			enabled?: bool

			// Only mitigate attacks when upstream servers seem unhealthy
			only_when_upstream_unhealthy?: bool
		})

		// Whether to forward client IP (resolver) subnet if no EDNS
		// Client Subnet is sent
		ecs_fallback?: bool

		// Identifier.
		id?: string

		// Maximum DNS cache TTL This setting sets an upper bound on DNS
		// TTLs for purposes of caching between DNS Firewall and the
		// upstream servers. Higher TTLs will be decreased to the maximum
		// defined here for caching purposes.
		maximum_cache_ttl?: number

		// Minimum DNS cache TTL This setting sets a lower bound on DNS
		// TTLs for purposes of caching between DNS Firewall and the
		// upstream servers. Lower TTLs will be increased to the minimum
		// defined here for caching purposes.
		minimum_cache_ttl?: number

		// Last modification of DNS Firewall cluster
		modified_on?: string

		// DNS Firewall cluster name
		name!: string

		// Negative DNS cache TTL This setting controls how long DNS
		// Firewall should cache negative responses (e.g., NXDOMAIN) from
		// the upstream servers.
		negative_cache_ttl?: number

		// Ratelimit in queries per second per datacenter (applies to DNS
		// queries sent to the upstream nameservers configured on the
		// cluster)
		ratelimit?: number

		// Number of retries for fetching DNS responses from upstream
		// nameservers (not counting the initial attempt)
		retries?: number
		upstream_ips!: [...string]
	})
}
