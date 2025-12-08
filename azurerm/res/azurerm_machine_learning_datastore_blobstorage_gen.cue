package res

#azurerm_machine_learning_datastore_blobstorage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_datastore_blobstorage")
	close({
		account_key?:                string
		description?:                string
		id?:                         string
		is_default?:                 bool
		name!:                       string
		service_data_auth_identity?: string
		shared_access_signature?:    string
		timeouts?:                   #timeouts
		storage_container_id!:       string
		tags?: [string]: string
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
