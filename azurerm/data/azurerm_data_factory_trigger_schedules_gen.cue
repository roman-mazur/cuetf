package data

#azurerm_data_factory_trigger_schedules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_trigger_schedules")
	close({
		timeouts?:        #timeouts
		data_factory_id!: string
		id?:              string
		items?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
