package res

#cloudflare_dns_zone_transfers_outgoing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_outgoing")
	close({
		// The time for a specific event.
		checked_time?: string

		// The time for a specific event.
		created_time?: string
		id?:           string

		// The time for a specific event.
		last_transferred_time?: string

		// Zone name.
		name!: string

		// A list of peer tags.
		peers!: [...string]

		// The serial number of the SOA for the given zone.
		soa_serial?: number
		zone_id!:    string
	})
}
