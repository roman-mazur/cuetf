package data

#cloudflare_waiting_room_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_waiting_room_settings")
	close({
		// Identifier.
		id?: string

		// Whether to allow verified search engine crawlers to bypass all
		// waiting rooms on this zone.
		// Verified search engine crawlers will not be tracked or counted
		// by the waiting room system,
		// and will not appear in waiting room analytics.
		search_engine_crawler_bypass?: bool

		// Identifier.
		zone_id!: string
	})
}
