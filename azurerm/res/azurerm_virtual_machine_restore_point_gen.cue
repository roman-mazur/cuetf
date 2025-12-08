package res

#azurerm_virtual_machine_restore_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_restore_point")
	close({
		timeouts?:                       #timeouts
		crash_consistency_mode_enabled?: bool
		excluded_disks?: [...string]
		id?:                                          string
		name!:                                        string
		virtual_machine_restore_point_collection_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
