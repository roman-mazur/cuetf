package res

#azurerm_nat_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_nat_gateway")
	close({
		timeouts?:                #timeouts
		id?:                      string
		idle_timeout_in_minutes?: number
		location!:                string
		name!:                    string
		resource_group_name!:     string
		resource_guid?:           string
		sku_name?:                string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
