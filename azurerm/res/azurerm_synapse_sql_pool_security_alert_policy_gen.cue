package res

#azurerm_synapse_sql_pool_security_alert_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_sql_pool_security_alert_policy")
	close({
		timeouts?: #timeouts
		disabled_alerts?: [...string]
		email_account_admins_enabled?: bool
		email_addresses?: [...string]
		id?:                         string
		policy_state!:               string
		retention_days?:             number
		sql_pool_id!:                string
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
