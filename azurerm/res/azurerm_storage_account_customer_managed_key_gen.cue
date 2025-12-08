package res

#azurerm_storage_account_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_account_customer_managed_key")
	close({
		timeouts?:                     #timeouts
		federated_identity_client_id?: string
		id?:                           string
		key_name!:                     string
		key_vault_id?:                 string
		key_vault_uri?:                string
		key_version?:                  string
		managed_hsm_key_id?:           string
		storage_account_id!:           string
		user_assigned_identity_id?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
