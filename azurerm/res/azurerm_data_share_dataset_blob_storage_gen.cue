package res

import "list"

#azurerm_data_share_dataset_blob_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share_dataset_blob_storage")
	close({
		storage_account!: matchN(1, [#storage_account, list.MaxItems(1) & [_, ...] & [...#storage_account]])
		container_name!: string
		data_share_id!:  string
		display_name?:   string
		file_path?:      string
		folder_path?:    string
		id?:             string
		name!:           string
		timeouts?:       #timeouts
	})

	#storage_account: close({
		name!:                string
		resource_group_name!: string
		subscription_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
