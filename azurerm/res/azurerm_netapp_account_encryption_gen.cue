package res

#azurerm_netapp_account_encryption: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_netapp_account_encryption")
	close({
		// The full resource ID of the cross-tenant key vault. Required
		// when using federated_client_id for cross-tenant scenarios.
		cross_tenant_key_vault_resource_id?: string

		// The versionless encryption key url.
		encryption_key!: string

		// The Client ID of the multi-tenant Entra ID application used to
		// access cross-tenant key vaults.
		federated_client_id?: string
		id?:                  string

		// The ID of the NetApp Account where encryption will be set.
		netapp_account_id!: string
		timeouts?:          #timeouts

		// The Principal ID of the System Assigned Identity to use for
		// encryption.
		system_assigned_identity_principal_id?: string

		// The resource ID of the User Assigned Identity to use for
		// encryption.
		user_assigned_identity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
