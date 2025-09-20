package res

#azurerm_eventhub_namespace_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub_namespace_customer_managed_key")
	close({
		timeouts?:                          #timeouts
		eventhub_namespace_id!:             string
		id?:                                string
		infrastructure_encryption_enabled?: bool
		key_vault_key_ids!: [...string]
		user_assigned_identity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
