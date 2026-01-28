package res

#azurerm_kusto_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kusto_script")
	close({
		continue_on_errors_enabled?:         bool
		database_id!:                        string
		force_an_update_when_value_changed?: string
		id?:                                 string
		name!:                               string
		principal_permissions_action?:       string
		sas_token?:                          string
		timeouts?:                           #timeouts
		script_content?:                     string
		script_level?:                       string
		url?:                                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
