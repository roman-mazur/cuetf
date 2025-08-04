package res

#cloudflare_dns_zone_transfers_incoming: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_incoming")
	close({
		// How often should a secondary zone auto refresh regardless of
		// DNS NOTIFY.
		// Not applicable for primary zones.
		auto_refresh_seconds!: number

		// The time for a specific event.
		checked_time?: string

		// The time for a specific event.
		created_time?: string
		id?:           string

		// The time for a specific event.
		modified_time?: string

		// Zone name.
		name!: string

		// A list of peer tags.
		peers!: [...string]

		// The serial number of the SOA for the given zone.
		soa_serial?: number
		zone_id!:    string
	})
}
