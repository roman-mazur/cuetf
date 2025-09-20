package data

#azurerm_netapp_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_snapshot")
	close({
		timeouts?:            #timeouts
		account_name!:        string
		id?:                  string
		location?:            string
		name!:                string
		pool_name!:           string
		resource_group_name!: string
		volume_name!:         string
	})

	#timeouts: close({
		read?: string
	})
}
