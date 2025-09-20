package res

#azurerm_arc_machine_automanage_configuration_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_arc_machine_automanage_configuration_assignment")
	close({
		timeouts?:         #timeouts
		arc_machine_id!:   string
		configuration_id!: string
		id?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
