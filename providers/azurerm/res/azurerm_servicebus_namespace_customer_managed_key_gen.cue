package res

#azurerm_servicebus_namespace_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_servicebus_namespace_customer_managed_key")
	close({
		timeouts?:                          #timeouts
		id?:                                string
		infrastructure_encryption_enabled?: bool
		key_vault_key_id!:                  string
		namespace_id!:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
