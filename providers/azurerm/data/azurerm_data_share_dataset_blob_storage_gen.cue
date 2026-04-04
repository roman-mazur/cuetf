package data

#azurerm_data_share_dataset_blob_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_data_share_dataset_blob_storage")
	close({
		timeouts?:       #timeouts
		container_name?: string
		data_share_id!:  string
		display_name?:   string
		file_path?:      string
		folder_path?:    string
		id?:             string
		name!:           string
		storage_account?: [...close({
			name?:                string
			resource_group_name?: string
			subscription_id?:     string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
