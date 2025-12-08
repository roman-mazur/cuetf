package res

#azurerm_mssql_job_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_job_target_group")
	close({
		job_target?: matchN(1, [#job_target, [...#job_target]])
		timeouts?:     #timeouts
		id?:           string
		job_agent_id!: string
		name!:         string
	})

	#job_target: close({
		database_name?:     string
		elastic_pool_name?: string
		job_credential_id?: string
		membership_type?:   string
		server_name!:       string
		type?:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
