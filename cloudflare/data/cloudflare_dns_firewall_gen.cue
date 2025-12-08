package data

#cloudflare_dns_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dns_firewall")
	close({
		// Identifier.
		account_id!: string

		// Whether to refuse to answer queries for the ANY type
		deprecate_any_requests?: bool

		// Identifier.
		dns_firewall_id!: string

		// Attack mitigation settings
		attack_mitigation?: close({
			// When enabled, automatically mitigate random-prefix attacks to
			// protect upstream DNS servers
			enabled?: bool

			// Only mitigate attacks when upstream servers seem unhealthy
			only_when_upstream_unhealthy?: bool
		})
		dns_firewall_ips?: [...string]

		// Whether to forward client IP (resolver) subnet if no EDNS
		// Client Subnet is sent
		ecs_fallback?: bool

		// Identifier.
		id?: string

		// By default, Cloudflare attempts to cache responses for as long
		// as
		// indicated by the TTL received from upstream nameservers. This
		// setting
		// sets an upper bound on this duration. For caching purposes,
		// higher TTLs
		// will be decreased to the maximum value defined by this setting.
		//
		// This setting does not affect the TTL value in the DNS response
		// Cloudflare returns to clients. Cloudflare will always forward
		// the TTL
		// value received from upstream nameservers.
		maximum_cache_ttl?: number

		// By default, Cloudflare attempts to cache responses for as long
		// as
		// indicated by the TTL received from upstream nameservers. This
		// setting
		// sets a lower bound on this duration. For caching purposes,
		// lower TTLs
		// will be increased to the minimum value defined by this setting.
		//
		// This setting does not affect the TTL value in the DNS response
		// Cloudflare returns to clients. Cloudflare will always forward
		// the TTL
		// value received from upstream nameservers.
		//
		// Note that, even with this setting, there is no guarantee that a
		// response will be cached for at least the specified duration.
		// Cached
		// responses may be removed earlier for capacity or other
		// operational
		// reasons.
		minimum_cache_ttl?: number

		// Last modification of DNS Firewall cluster
		modified_on?: string

		// DNS Firewall cluster name
		name?: string

		// This setting controls how long DNS Firewall should cache
		// negative
		// responses (e.g., NXDOMAIN) from the upstream servers.
		//
		// This setting does not affect the TTL value in the DNS response
		// Cloudflare returns to clients. Cloudflare will always forward
		// the TTL
		// value received from upstream nameservers.
		negative_cache_ttl?: number

		// Ratelimit in queries per second per datacenter (applies to DNS
		// queries sent to the upstream nameservers configured on the
		// cluster)
		ratelimit?: number

		// Number of retries for fetching DNS responses from upstream
		// nameservers (not counting the initial attempt)
		retries?: number
		upstream_ips?: [...string]
	})
}
