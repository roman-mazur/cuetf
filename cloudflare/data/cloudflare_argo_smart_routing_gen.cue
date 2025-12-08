package data

#cloudflare_argo_smart_routing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_argo_smart_routing")
	close({
		// Specifies if the setting is editable.
		editable?: bool

		// Specifies the zone associated with the API call.
		id?: string

		// Specifies the time when the setting was last modified.
		modified_on?: string

		// Specifies the enablement value of Argo Smart Routing.
		// Available values: "on", "off".
		value?: string

		// Specifies the zone associated with the API call.
		zone_id!: string
	})
}
