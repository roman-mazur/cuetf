package res

#azurerm_stream_analytics_output_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_table")
	close({
		batch_size!: number
		columns_to_remove?: [...string]
		id?:                        string
		name!:                      string
		partition_key!:             string
		resource_group_name!:       string
		row_key!:                   string
		storage_account_key!:       string
		storage_account_name!:      string
		timeouts?:                  #timeouts
		stream_analytics_job_name!: string
		table!:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
