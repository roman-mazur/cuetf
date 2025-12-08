package data

#azurerm_maps_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_maps_account")
	close({
		timeouts?:             #timeouts
		id?:                   string
		name!:                 string
		primary_access_key?:   string
		resource_group_name!:  string
		secondary_access_key?: string
		sku_name?:             string
		tags?: [string]: string
		x_ms_client_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
