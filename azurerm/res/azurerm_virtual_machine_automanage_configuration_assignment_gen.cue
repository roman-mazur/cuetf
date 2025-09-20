package res

#azurerm_virtual_machine_automanage_configuration_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_automanage_configuration_assignment")
	close({
		timeouts?:           #timeouts
		configuration_id!:   string
		id?:                 string
		virtual_machine_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
