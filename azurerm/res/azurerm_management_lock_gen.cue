package res

#azurerm_management_lock: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_management_lock")
	close({
		timeouts?:   #timeouts
		id?:         string
		lock_level!: string
		name!:       string
		notes?:      string
		scope!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
