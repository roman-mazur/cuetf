package res

#azurerm_mssql_server_microsoft_support_auditing_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_server_microsoft_support_auditing_policy")
	close({
		timeouts?:                        #timeouts
		blob_storage_endpoint?:           string
		enabled?:                         bool
		id?:                              string
		log_monitoring_enabled?:          bool
		server_id!:                       string
		storage_account_access_key?:      string
		storage_account_subscription_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
