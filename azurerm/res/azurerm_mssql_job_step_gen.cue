package res

import "list"

#azurerm_mssql_job_step: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_job_step")
	close({
		id?:                             string
		initial_retry_interval_seconds?: number
		job_credential_id?:              string
		job_id!:                         string
		job_step_index!:                 number
		job_target_group_id!:            string
		output_target?: matchN(1, [#output_target, list.MaxItems(1) & [...#output_target]])
		maximum_retry_interval_seconds?:    number
		timeouts?:                          #timeouts
		name!:                              string
		retry_attempts?:                    number
		retry_interval_backoff_multiplier?: number
		sql_script!:                        string
		timeout_seconds?:                   number
	})

	#output_target: close({
		job_credential_id?: string
		mssql_database_id!: string
		schema_name?:       string
		table_name!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
