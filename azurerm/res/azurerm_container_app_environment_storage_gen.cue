package res

#azurerm_container_app_environment_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_environment_storage")
	close({
		// The Storage Account Access Key.
		access_key?: string

		// The access mode to connect this storage to the Container App.
		// Possible values include `ReadOnly` and `ReadWrite`.
		access_mode!: string

		// The Azure Storage Account in which the Share to be used is
		// located.
		account_name?: string

		// The ID of the Container App Environment to which this storage
		// belongs.
		container_app_environment_id!: string
		id?:                           string

		// The name for this Storage.
		name!:           string
		nfs_server_url?: string
		timeouts?:       #timeouts

		// The name of the Azure Storage Share to use.
		share_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
