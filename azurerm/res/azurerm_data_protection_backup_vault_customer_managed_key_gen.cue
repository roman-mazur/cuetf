package res

#azurerm_data_protection_backup_vault_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_vault_customer_managed_key")
	close({
		timeouts?:                        #timeouts
		data_protection_backup_vault_id!: string
		id?:                              string
		key_vault_key_id!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
