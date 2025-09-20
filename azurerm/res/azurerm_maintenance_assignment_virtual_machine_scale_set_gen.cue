package res

#azurerm_maintenance_assignment_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_maintenance_assignment_virtual_machine_scale_set")
	close({
		timeouts?:                     #timeouts
		id?:                           string
		location!:                     string
		maintenance_configuration_id!: string
		virtual_machine_scale_set_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
