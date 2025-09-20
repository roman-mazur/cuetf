package res

#azurerm_log_analytics_linked_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_linked_storage_account")
	close({
		timeouts?:            #timeouts
		data_source_type!:    string
		id?:                  string
		resource_group_name!: string
		storage_account_ids!: [...string]
		workspace_id?:          string
		workspace_resource_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
