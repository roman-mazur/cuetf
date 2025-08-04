package res

#cloudflare_dns_zone_transfers_outgoing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_outgoing")
	close({
		checked_time?:          string
		created_time?:          string
		id?:                    string
		last_transferred_time?: string
		name!:                  string
		peers!: [...string]
		soa_serial?: number
		zone_id!:    string
	})
}
