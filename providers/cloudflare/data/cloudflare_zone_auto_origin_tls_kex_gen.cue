package data

cloudflare_zone_auto_origin_tls_kex: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zone_auto_origin_tls_kex")
	close({
		// Whether Auto-Origin TLS KEX selection is enabled for the zone.
		enabled?: bool
		id?:      string

		// Last time this setting was modified.
		modified_on?: string
		zone_id!:     string
	})
}
