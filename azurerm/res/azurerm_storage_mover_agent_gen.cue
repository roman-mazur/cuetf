package res

#azurerm_storage_mover_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_mover_agent")
	close({
		timeouts?:                 #timeouts
		arc_virtual_machine_id!:   string
		arc_virtual_machine_uuid!: string
		description?:              string
		id?:                       string
		name!:                     string
		storage_mover_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
