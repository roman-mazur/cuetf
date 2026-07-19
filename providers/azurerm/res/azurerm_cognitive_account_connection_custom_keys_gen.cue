package res

azurerm_cognitive_account_connection_custom_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account_connection_custom_keys")
	close({
		timeouts?:             #timeouts
		category!:             string
		cognitive_account_id!: string
		custom_keys!: [string]: string
		id?: string
		metadata?: [string]: string
		name!:   string
		target!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
