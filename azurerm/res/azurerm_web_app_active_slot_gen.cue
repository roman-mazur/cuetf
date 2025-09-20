package res

#azurerm_web_app_active_slot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_app_active_slot")
	close({
		// The timestamp of the last successful swap with `Production`
		last_successful_swap?: string

		// The swap action should overwrite the Production slot's network
		// configuration with the configuration from this slot. Defaults
		// to `true`.
		overwrite_network_config?: bool
		id?:                       string

		// The ID of the Slot to swap with `Production`.
		slot_id!:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
