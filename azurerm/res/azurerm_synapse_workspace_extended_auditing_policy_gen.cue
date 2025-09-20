package res

#azurerm_synapse_workspace_extended_auditing_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_workspace_extended_auditing_policy")
	close({
		timeouts?:                                #timeouts
		id?:                                      string
		log_monitoring_enabled?:                  bool
		retention_in_days?:                       number
		storage_account_access_key?:              string
		storage_account_access_key_is_secondary?: bool
		storage_endpoint?:                        string
		synapse_workspace_id!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
