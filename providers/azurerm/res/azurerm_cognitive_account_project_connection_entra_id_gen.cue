package res

azurerm_cognitive_account_project_connection_entra_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account_project_connection_entra_id")
	close({
		timeouts?:                     #timeouts
		authentication_type?:          string
		category!:                     string
		cognitive_account_project_id!: string
		id?:                           string
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
