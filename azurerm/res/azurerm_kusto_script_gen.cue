package res

#azurerm_kusto_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_script")
	close({
		timeouts?:                           #timeouts
		continue_on_errors_enabled?:         bool
		database_id!:                        string
		force_an_update_when_value_changed?: string
		id?:                                 string
		name!:                               string
		sas_token?:                          string
		script_content?:                     string
		url?:                                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
