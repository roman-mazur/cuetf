package res

#azurerm_data_factory_dataset_azure_sql_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_dataset_azure_sql_table")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		folder?:          string
		id?:              string
		schema_column?: matchN(1, [#schema_column, [...#schema_column]])
		linked_service_id!: string
		name!:              string
		timeouts?:          #timeouts
		parameters?: [string]: string
		schema?: string
		table?:  string
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
