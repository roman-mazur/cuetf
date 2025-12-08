package res

#azurerm_mssql_managed_instance_start_stop_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_managed_instance_start_stop_schedule")
	close({
		schedule!: matchN(1, [#schedule, [_, ...] & [...#schedule]])
		description?:         string
		id?:                  string
		managed_instance_id!: string
		next_execution_time?: string
		next_run_action?:     string
		timezone_id?:         string
		timeouts?:            #timeouts
	})

	#schedule: close({
		start_day!:  string
		start_time!: string
		stop_day!:   string
		stop_time!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
