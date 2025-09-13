package res

#cloudflare_argo_smart_routing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_argo_smart_routing")
	close({
		// Specifies the zone associated with the API call.
		id?: string

		// Enables Argo Smart Routing.
		// Available values: "on", "off".
		value!: string

		// Specifies the zone associated with the API call.
		zone_id!: string
	})
}
