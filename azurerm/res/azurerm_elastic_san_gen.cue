package res

import "list"

#azurerm_elastic_san: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_elastic_san")
	close({
		base_size_in_tib!:     number
		extended_size_in_tib?: number
		id?:                   string
		location!:             string
		name!:                 string
		resource_group_name!:  string
		tags?: [string]: string
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		total_iops?:               number
		total_mbps?:               number
		timeouts?:                 #timeouts
		total_size_in_tib?:        number
		total_volume_size_in_gib?: number
		volume_group_count?:       number
		zones?: [...string]
	})

	#sku: close({
		name!: string
		tier?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
