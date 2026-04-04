package res

#azurerm_virtual_machine_restore_point_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_restore_point_collection")
	close({
		timeouts?:                  #timeouts
		id?:                        string
		location!:                  string
		name!:                      string
		resource_group_name!:       string
		source_virtual_machine_id!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
