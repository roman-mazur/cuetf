package res

#azurerm_stream_analytics_output_powerbi: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_output_powerbi")
	close({
		timeouts?:                  #timeouts
		dataset!:                   string
		group_id!:                  string
		group_name!:                string
		id?:                        string
		name!:                      string
		stream_analytics_job_id!:   string
		table!:                     string
		token_user_display_name?:   string
		token_user_principal_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
