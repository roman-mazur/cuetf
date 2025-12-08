package res

#azurerm_cognitive_account_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account_customer_managed_key")
	close({
		timeouts?:             #timeouts
		cognitive_account_id!: string
		id?:                   string
		identity_client_id?:   string
		key_vault_key_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
