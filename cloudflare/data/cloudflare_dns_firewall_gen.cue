package data

#cloudflare_dns_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_firewall")
	close({
		account_id!:             string
		deprecate_any_requests?: bool
		dns_firewall_id?:        string
		dns_firewall_ips?: [...string]
		ecs_fallback?:      bool
		id?:                string
		maximum_cache_ttl?: number
		minimum_cache_ttl?: number
		attack_mitigation?: close({
			enabled?:                      bool
			only_when_upstream_unhealthy?: bool
		})
		modified_on?:        string
		name?:               string
		negative_cache_ttl?: number
		ratelimit?:          number
		retries?:            number
		upstream_ips?: [...string]
	})
}
