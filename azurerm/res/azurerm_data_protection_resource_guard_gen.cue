package res

#azurerm_data_protection_resource_guard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_resource_guard")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		vault_critical_operation_exclusion_list?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
