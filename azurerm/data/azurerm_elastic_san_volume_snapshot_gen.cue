package data

#azurerm_elastic_san_volume_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_elastic_san_volume_snapshot")
	close({
		timeouts?:                  #timeouts
		id?:                        string
		name!:                      string
		source_id?:                 string
		source_volume_size_in_gib?: number
		volume_group_id!:           string
		volume_name?:               string
	})

	#timeouts: close({
		read?: string
	})
}
