package res

#azurerm_container_registry_task_schedule_run_now: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_registry_task_schedule_run_now")
	close({
		timeouts?:                   #timeouts
		container_registry_task_id!: string
		id?:                         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
