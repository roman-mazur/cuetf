package res

#azurerm_traffic_manager_external_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_traffic_manager_external_endpoint")
	close({
		always_serve_enabled?: bool
		enabled?:              bool
		endpoint_location?:    string
		geo_mappings?: [...string]
		id?:   string
		name!: string
		custom_header?: matchN(1, [#custom_header, [...#custom_header]])
		priority?: number
		subnet?: matchN(1, [#subnet, [...#subnet]])
		timeouts?:   #timeouts
		profile_id!: string
		target!:     string
		weight?:     number
	})

	#custom_header: close({
		name!:  string
		value!: string
	})

	#subnet: close({
		first!: string
		last?:  string
		scope?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
