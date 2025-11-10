package res

import "list"

#azurerm_api_management_standalone_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_standalone_gateway")
	close({
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		backend_subnet_id?:   string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		virtual_network_type?: string
		timeouts?:             #timeouts
	})

	#sku: close({
		capacity?: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
