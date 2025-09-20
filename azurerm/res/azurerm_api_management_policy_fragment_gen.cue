package res

#azurerm_api_management_policy_fragment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_policy_fragment")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		description?:       string
		format?:            string
		id?:                string
		name!:              string
		value!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
