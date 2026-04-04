package res

#azurerm_advanced_threat_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_advanced_threat_protection")
	close({
		timeouts?:           #timeouts
		enabled!:            bool
		id?:                 string
		target_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
