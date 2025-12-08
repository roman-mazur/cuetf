package res

#azurerm_virtual_desktop_host_pool_registration_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_desktop_host_pool_registration_info")
	close({
		timeouts?:        #timeouts
		expiration_date!: string
		hostpool_id!:     string
		id?:              string
		token?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
