package res

#azurerm_iotcentral_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iotcentral_organization")
	close({
		timeouts?:                  #timeouts
		display_name!:              string
		id?:                        string
		iotcentral_application_id!: string
		organization_id!:           string
		parent_organization_id?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
