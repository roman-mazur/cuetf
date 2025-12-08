package res

#azurerm_iothub_enrichment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_enrichment")
	close({
		timeouts?: #timeouts
		endpoint_names!: [...string]
		id?:                  string
		iothub_name!:         string
		key!:                 string
		resource_group_name!: string
		value!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
