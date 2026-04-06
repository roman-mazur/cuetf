package res

#azurerm_data_factory_dataset_postgresql: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_dataset_postgresql")
	close({
		schema_column?: matchN(1, [#schema_column, [...#schema_column]])
		timeouts?: #timeouts
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:     string
		description?:         string
		folder?:              string
		id?:                  string
		linked_service_name!: string
		name!:                string
		parameters?: [string]: string
		table_name?: string
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
