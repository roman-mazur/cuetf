package res

#azurerm_stream_analytics_output_synapse: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_synapse")
	close({
		timeouts?:                  #timeouts
		database!:                  string
		id?:                        string
		name!:                      string
		password!:                  string
		resource_group_name!:       string
		server!:                    string
		stream_analytics_job_name!: string
		table!:                     string
		user!:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
