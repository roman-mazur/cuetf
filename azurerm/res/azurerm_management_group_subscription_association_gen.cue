package res

#azurerm_management_group_subscription_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_management_group_subscription_association")
	close({
		timeouts?:            #timeouts
		id?:                  string
		management_group_id!: string
		subscription_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
