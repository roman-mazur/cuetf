package res

#azurerm_storage_sync_server_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_sync_server_endpoint")
	close({
		cloud_tiering_enabled?:      bool
		id?:                         string
		initial_download_policy?:    string
		local_cache_mode?:           string
		name!:                       string
		registered_server_id!:       string
		server_local_path!:          string
		timeouts?:                   #timeouts
		storage_sync_group_id!:      string
		tier_files_older_than_days?: number
		volume_free_space_percent?:  number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
