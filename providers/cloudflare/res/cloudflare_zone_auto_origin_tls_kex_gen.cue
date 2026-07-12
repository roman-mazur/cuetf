package res

cloudflare_zone_auto_origin_tls_kex: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zone_auto_origin_tls_kex")
	close({
		// Controls enablement of Auto-Origin TLS KEX selection for the zone.
		enabled!: bool
		id?:      string

		// Last time this setting was modified.
		modified_on?: string
		zone_id!:     string
	})
}
