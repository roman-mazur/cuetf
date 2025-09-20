package res

#azurerm_traffic_manager_azure_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_traffic_manager_azure_endpoint")
	close({
		always_serve_enabled?: bool
		enabled?:              bool
		geo_mappings?: [...string]
		id?:         string
		name!:       string
		priority?:   number
		profile_id!: string
		custom_header?: matchN(1, [#custom_header, [...#custom_header]])
		target_resource_id!: string
		subnet?: matchN(1, [#subnet, [...#subnet]])
		timeouts?: #timeouts
		weight?:   number
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
