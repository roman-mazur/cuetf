package res

#azurerm_mssql_job_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_job_credential")
	close({
		timeouts?:            #timeouts
		id?:                  string
		job_agent_id!:        string
		name!:                string
		password?:            string
		password_wo?:         string
		password_wo_version?: number
		username!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
