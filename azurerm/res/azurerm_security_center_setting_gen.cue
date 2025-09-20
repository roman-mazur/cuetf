package res

#azurerm_security_center_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_security_center_setting")
	close({
		timeouts?:     #timeouts
		enabled!:      bool
		id?:           string
		setting_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
