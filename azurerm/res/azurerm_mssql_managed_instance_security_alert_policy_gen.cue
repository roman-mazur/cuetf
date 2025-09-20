package res

#azurerm_mssql_managed_instance_security_alert_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_managed_instance_security_alert_policy")
	close({
		disabled_alerts?: [...string]
		email_account_admins_enabled?: bool
		email_addresses?: [...string]
		enabled?:                    bool
		id?:                         string
		managed_instance_name!:      string
		resource_group_name!:        string
		timeouts?:                   #timeouts
		retention_days?:             number
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
