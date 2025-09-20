package data

#azurerm_data_share_dataset_kusto_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share_dataset_kusto_cluster")
	close({
		timeouts?:               #timeouts
		display_name?:           string
		id?:                     string
		kusto_cluster_id?:       string
		kusto_cluster_location?: string
		name!:                   string
		share_id!:               string
	})

	#timeouts: close({
		read?: string
	})
}
