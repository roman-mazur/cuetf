package res

#azurerm_storage_sync_cloud_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_sync_cloud_endpoint")
	close({
		timeouts?:                  #timeouts
		file_share_name!:           string
		id?:                        string
		name!:                      string
		storage_account_id!:        string
		storage_account_tenant_id?: string
		storage_sync_group_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
