package data

#azurerm_netapp_account_encryption: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_account_encryption")
	close({
		cross_tenant_key_vault_resource_id?: string
		encryption_key?:                     string
		federated_client_id?:                string

		// The ID of the NetApp Account where encryption will be set.
		netapp_account_id!:                     string
		id?:                                    string
		system_assigned_identity_principal_id?: string
		user_assigned_identity_id?:             string
		timeouts?:                              #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
