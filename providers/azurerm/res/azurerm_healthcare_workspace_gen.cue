package res

#azurerm_healthcare_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_healthcare_workspace")
	close({
		timeouts?: #timeouts
		id?:       string
		location!: string
		name!:     string
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
