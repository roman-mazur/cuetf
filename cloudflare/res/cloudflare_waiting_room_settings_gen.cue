package res

#cloudflare_waiting_room_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_waiting_room_settings")
	id?:                           string
	search_engine_crawler_bypass?: bool
	zone_id!:                      string
}
