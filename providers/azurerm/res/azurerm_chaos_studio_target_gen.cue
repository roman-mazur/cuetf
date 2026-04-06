package res

#azurerm_chaos_studio_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_chaos_studio_target")
	close({
		timeouts?:           #timeouts
		id?:                 string
		location!:           string
		target_resource_id!: string
		target_type!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
