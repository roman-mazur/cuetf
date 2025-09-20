package data

#azurerm_batch_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_batch_application")
	close({
		timeouts?:            #timeouts
		account_name!:        string
		allow_updates?:       bool
		default_version?:     string
		display_name?:        string
		id?:                  string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
