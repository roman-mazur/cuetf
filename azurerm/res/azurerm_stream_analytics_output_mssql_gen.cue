package res

#azurerm_stream_analytics_output_mssql: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_output_mssql")
	close({
		authentication_mode?:       string
		database!:                  string
		id?:                        string
		max_batch_count?:           number
		max_writer_count?:          number
		name!:                      string
		password?:                  string
		resource_group_name!:       string
		timeouts?:                  #timeouts
		server!:                    string
		stream_analytics_job_name!: string
		table!:                     string
		user?:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
