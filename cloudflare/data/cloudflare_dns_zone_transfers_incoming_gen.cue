package data

#cloudflare_dns_zone_transfers_incoming: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_incoming")
	close({
		auto_refresh_seconds?: number
		checked_time?:         string
		created_time?:         string
		id?:                   string
		modified_time?:        string
		name?:                 string
		peers?: [...string]
		soa_serial?: number
		zone_id!:    string
	})
}
