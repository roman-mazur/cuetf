package res

import "list"

#azurerm_api_management_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_gateway")
	close({
		location_data?: matchN(1, [#location_data, list.MaxItems(1) & [_, ...] & [...#location_data]])
		api_management_id!: string
		description?:       string
		id?:                string
		name!:              string
		timeouts?:          #timeouts
	})

	#location_data: close({
		city?:     string
		district?: string
		name!:     string
		region?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
