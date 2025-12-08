package res

#azurerm_network_manager_security_admin_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_security_admin_configuration")
	close({
		timeouts?: #timeouts
		apply_on_network_intent_policy_based_services?: [...string]
		description?:        string
		id?:                 string
		name!:               string
		network_manager_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
