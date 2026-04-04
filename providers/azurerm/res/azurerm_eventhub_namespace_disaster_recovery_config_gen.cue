package res

#azurerm_eventhub_namespace_disaster_recovery_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventhub_namespace_disaster_recovery_config")
	close({
		timeouts?:             #timeouts
		id?:                   string
		name!:                 string
		namespace_name!:       string
		partner_namespace_id!: string
		resource_group_name!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
