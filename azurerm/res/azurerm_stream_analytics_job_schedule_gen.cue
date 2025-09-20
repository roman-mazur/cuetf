package res

#azurerm_stream_analytics_job_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_job_schedule")
	close({
		timeouts?:                #timeouts
		id?:                      string
		last_output_time?:        string
		start_mode!:              string
		start_time?:              string
		stream_analytics_job_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
