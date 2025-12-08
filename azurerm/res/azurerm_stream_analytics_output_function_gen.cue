package res

#azurerm_stream_analytics_output_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_output_function")
	close({
		timeouts?:                  #timeouts
		api_key!:                   string
		batch_max_count?:           number
		batch_max_in_bytes?:        number
		function_app!:              string
		function_name!:             string
		id?:                        string
		name!:                      string
		resource_group_name!:       string
		stream_analytics_job_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
