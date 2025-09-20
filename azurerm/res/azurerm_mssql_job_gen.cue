package res

#azurerm_mssql_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_job")
	close({
		timeouts?:     #timeouts
		description?:  string
		id?:           string
		job_agent_id!: string
		name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
