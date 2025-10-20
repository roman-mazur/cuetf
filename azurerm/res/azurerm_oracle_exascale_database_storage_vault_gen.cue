package res

import "list"

#azurerm_oracle_exascale_database_storage_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_exascale_database_storage_vault")
	close({
		additional_flash_cache_percentage!: number
		description?:                       string
		display_name!:                      string
		id?:                                string
		location!:                          string
		name!:                              string
		resource_group_name!:               string
		high_capacity_database_storage?: matchN(1, [#high_capacity_database_storage, list.MaxItems(1) & [_, ...] & [...#high_capacity_database_storage]])
		tags?: [string]: string
		timeouts?:  #timeouts
		time_zone?: string
		zones!: [...string]
	})

	#high_capacity_database_storage: close({
		available_size_in_gb?: number
		total_size_in_gb!:     number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
