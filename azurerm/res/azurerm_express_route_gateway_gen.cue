package res

#azurerm_express_route_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_gateway")
	close({
		timeouts?:                      #timeouts
		allow_non_virtual_wan_traffic?: bool
		id?:                            string
		location!:                      string
		name!:                          string
		resource_group_name!:           string
		scale_units!:                   number
		tags?: [string]: string
		virtual_hub_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
