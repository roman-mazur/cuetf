package res

#azurerm_data_factory_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_customer_managed_key")
	close({
		timeouts?:                  #timeouts
		customer_managed_key_id!:   string
		data_factory_id!:           string
		id?:                        string
		user_assigned_identity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
