package res

#azurerm_machine_learning_datastore_datalake_gen2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_datastore_datalake_gen2")
	close({
		authority_url?:         string
		client_id?:             string
		client_secret?:         string
		description?:           string
		id?:                    string
		is_default?:            bool
		name!:                  string
		service_data_identity?: string
		timeouts?:              #timeouts
		storage_container_id!:  string
		tags?: [string]: string
		tenant_id?:    string
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
