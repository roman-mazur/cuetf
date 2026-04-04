package res

#azurerm_logic_app_integration_account_partner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_integration_account_partner")
	close({
		business_identity!: matchN(1, [#business_identity, [_, ...] & [...#business_identity]])
		timeouts?:                 #timeouts
		id?:                       string
		integration_account_name!: string
		metadata?:                 string
		name!:                     string
		resource_group_name!:      string
	})

	#business_identity: close({
		qualifier!: string
		value!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
