package res

#azurerm_mssql_server_security_alert_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_server_security_alert_policy")
	close({
		disabled_alerts?: [...string]
		email_account_admins?: bool
		email_addresses?: [...string]
		id?:                         string
		resource_group_name!:        string
		retention_days?:             number
		server_name!:                string
		timeouts?:                   #timeouts
		state!:                      string
		storage_account_access_key?: string
		storage_endpoint?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
