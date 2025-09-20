package data

#azurerm_elastic_san: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_elastic_san")
	close({
		base_size_in_tib?:     number
		extended_size_in_tib?: number
		id?:                   string
		location?:             string
		name!:                 string
		resource_group_name!:  string
		sku?: [...close({
			name?: string
			tier?: string
		})]
		tags?: [string]: string
		total_iops?:               number
		total_mbps?:               number
		total_size_in_tib?:        number
		total_volume_size_in_gib?: number
		timeouts?:                 #timeouts
		volume_group_count?:       number
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
