package data

#azurerm_storage_containers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_containers")
	close({
		timeouts?: #timeouts
		containers?: [...close({
			data_plane_id?:       string
			name?:                string
			resource_manager_id?: string
		})]
		id?:                 string
		name_prefix?:        string
		storage_account_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
