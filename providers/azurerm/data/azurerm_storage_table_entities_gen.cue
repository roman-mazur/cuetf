package data

#azurerm_storage_table_entities: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_table_entities")
	close({
		timeouts?: #timeouts
		filter!:   string
		id?:       string
		items?: [...close({
			partition_key?: string
			properties?: [string]: string
			row_key?: string
		})]
		select?: [...string]
		storage_table_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
