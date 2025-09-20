package data

#azurerm_data_share_dataset_data_lake_gen2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share_dataset_data_lake_gen2")
	close({
		timeouts?:           #timeouts
		display_name?:       string
		file_path?:          string
		file_system_name?:   string
		folder_path?:        string
		id?:                 string
		name!:               string
		share_id!:           string
		storage_account_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
