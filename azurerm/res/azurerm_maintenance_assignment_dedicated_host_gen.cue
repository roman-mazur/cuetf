package res

#azurerm_maintenance_assignment_dedicated_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_maintenance_assignment_dedicated_host")
	close({
		timeouts?:                     #timeouts
		dedicated_host_id!:            string
		id?:                           string
		location!:                     string
		maintenance_configuration_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
