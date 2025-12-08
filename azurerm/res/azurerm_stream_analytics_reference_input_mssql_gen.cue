package res

#azurerm_stream_analytics_reference_input_mssql: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_reference_input_mssql")
	close({
		database!:                  string
		delta_snapshot_query?:      string
		full_snapshot_query!:       string
		id?:                        string
		name!:                      string
		password!:                  string
		refresh_interval_duration?: string
		refresh_type!:              string
		timeouts?:                  #timeouts
		resource_group_name!:       string
		server!:                    string
		stream_analytics_job_name!: string
		table?:                     string
		username!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
