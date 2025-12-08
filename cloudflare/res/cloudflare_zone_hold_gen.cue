package res

#cloudflare_zone_hold: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zone_hold")
	close({
		hold?: bool

		// If `hold_after` is provided and future-dated, the hold will be
		// temporarily disabled,
		// then automatically re-enabled by the system at the time
		// specified
		// in this RFC3339-formatted timestamp. A past-dated `hold_after`
		// value will have
		// no effect on an existing, enabled hold. Providing an empty
		// string will set its value
		// to the current time.
		hold_after?: string

		// Identifier.
		id?: string

		// If `true`, the zone hold will extend to block any subdomain of
		// the given zone, as well
		// as SSL4SaaS Custom Hostnames. For example, a zone hold on a
		// zone with the hostname
		// 'example.com' and include_subdomains=true will block
		// 'example.com',
		// 'staging.example.com', 'api.staging.example.com', etc.
		include_subdomains?: bool

		// Identifier.
		zone_id!: string
	})
}
