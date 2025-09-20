package res

#azurerm_traffic_manager_nested_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_traffic_manager_nested_endpoint")
	close({
		enabled?:           bool
		endpoint_location?: string
		geo_mappings?: [...string]
		id?:                                    string
		minimum_child_endpoints!:               number
		minimum_required_child_endpoints_ipv4?: number
		minimum_required_child_endpoints_ipv6?: number
		custom_header?: matchN(1, [#custom_header, [...#custom_header]])
		subnet?: matchN(1, [#subnet, [...#subnet]])
		name!:               string
		timeouts?:           #timeouts
		priority?:           number
		profile_id!:         string
		target_resource_id!: string
		weight?:             number
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
