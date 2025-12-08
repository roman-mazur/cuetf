package res

import "list"

#azurerm_capacity_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_capacity_reservation")
	close({
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		capacity_reservation_group_id!: string
		id?:                            string
		name!:                          string
		tags?: [string]: string
		zone?:     string
		timeouts?: #timeouts
	})

	#sku: close({
		capacity!: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
