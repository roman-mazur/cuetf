package res

#azurerm_stream_analytics_job_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_job_storage_account")
	close({
		timeouts?:                #timeouts
		authentication_mode!:     string
		id?:                      string
		storage_account_key?:     string
		storage_account_name!:    string
		stream_analytics_job_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
