package res

cloudflare_ct_alerting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_ct_alerting")
	close({
		// Email addresses that receive CT alert notifications for the zone. A maximum
		// of 100 addresses may be configured. Each address must be a valid RFC 5322
		// email address and must not contain a comma.
		emails?: [...string]

		// Whether CT alerting is enabled for the zone.
		enabled!: bool

		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
