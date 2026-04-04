package data

#azurerm_container_app_environment_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_container_app_environment_storage")
	close({
		timeouts?: #timeouts

		// The access mode to connect this storage to the Container App.
		access_mode?: string

		// The Azure Storage Account in which the Share is located.
		account_name?: string

		// The ID of the Container App Environment to which this storage
		// belongs.
		container_app_environment_id!: string
		id?:                           string

		// The name for this Container App Environment Storage.
		name!: string

		// The NFS server URL for the Azure File Share.
		nfs_server_url?: string

		// The name of the Azure Storage Share.
		share_name?: string
	})

	#timeouts: close({
		read?: string
	})
}
