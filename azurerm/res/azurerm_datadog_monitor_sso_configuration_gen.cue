package res

#azurerm_datadog_monitor_sso_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_datadog_monitor_sso_configuration")
	close({
		timeouts?:                  #timeouts
		datadog_monitor_id!:        string
		enterprise_application_id!: string
		id?:                        string
		login_url?:                 string
		name?:                      string
		single_sign_on?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
