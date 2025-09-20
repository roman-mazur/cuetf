package res

#azurerm_api_management_global_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_global_schema")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		description?:         string
		id?:                  string
		resource_group_name!: string
		schema_id!:           string
		type!:                string
		value!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
