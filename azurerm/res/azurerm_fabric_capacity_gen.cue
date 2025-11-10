package res

import "list"

#azurerm_fabric_capacity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_fabric_capacity")
	close({
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		administration_members?: [...string]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#sku: close({
		name!: string
		tier!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
