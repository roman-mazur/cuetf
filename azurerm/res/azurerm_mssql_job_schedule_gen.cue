package res

#azurerm_mssql_job_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_job_schedule")
	close({
		timeouts?:   #timeouts
		enabled?:    bool
		end_time?:   string
		id?:         string
		interval?:   string
		job_id!:     string
		start_time?: string
		type!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
