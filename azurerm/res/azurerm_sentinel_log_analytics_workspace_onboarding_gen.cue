package res

#azurerm_sentinel_log_analytics_workspace_onboarding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_log_analytics_workspace_onboarding")
	close({
		timeouts?:                     #timeouts
		customer_managed_key_enabled?: bool
		id?:                           string
		workspace_id!:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
