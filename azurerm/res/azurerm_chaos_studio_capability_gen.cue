package res

#azurerm_chaos_studio_capability: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_chaos_studio_capability")
	close({
		timeouts?:               #timeouts
		capability_type!:        string
		chaos_studio_target_id!: string
		id?:                     string
		urn?:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
