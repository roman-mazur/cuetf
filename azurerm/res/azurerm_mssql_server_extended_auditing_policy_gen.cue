package res

#azurerm_mssql_server_extended_auditing_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_server_extended_auditing_policy")
	close({
		audit_actions_and_groups?: [...string]
		enabled?:                                 bool
		id?:                                      string
		log_monitoring_enabled?:                  bool
		predicate_expression?:                    string
		retention_in_days?:                       number
		server_id!:                               string
		storage_account_access_key?:              string
		storage_account_access_key_is_secondary?: bool
		timeouts?:                                #timeouts
		storage_account_subscription_id?:         string
		storage_endpoint?:                        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
