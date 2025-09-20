package data

#azurerm_storage_table_entity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_table_entity")
	close({
		timeouts?: #timeouts
		entity?: [string]: string
		id?:               string
		partition_key!:    string
		row_key!:          string
		storage_table_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
