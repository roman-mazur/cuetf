package res

#azurerm_log_analytics_storage_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_storage_insights")
	close({
		timeouts?: #timeouts
		blob_container_names?: [...string]
		id?:                  string
		name!:                string
		resource_group_name!: string
		storage_account_id!:  string
		storage_account_key!: string
		table_names?: [...string]
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
