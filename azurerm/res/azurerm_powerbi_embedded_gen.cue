package res

#azurerm_powerbi_embedded: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_powerbi_embedded")
	close({
		timeouts?: #timeouts
		administrators!: [...string]
		id?:                  string
		location!:            string
		mode?:                string
		name!:                string
		resource_group_name!: string
		sku_name!:            string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
