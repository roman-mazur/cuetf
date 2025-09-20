package res

#azurerm_data_factory_dataset_azure_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_dataset_azure_blob")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		dynamic_filename_enabled?: bool
		dynamic_path_enabled?:     bool
		filename?:                 string
		schema_column?: matchN(1, [#schema_column, [...#schema_column]])
		folder?:              string
		id?:                  string
		timeouts?:            #timeouts
		linked_service_name!: string
		name!:                string
		parameters?: [string]: string
		path?: string
	})

	#schema_column: close({
		description?: string
		name!:        string
		type?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
