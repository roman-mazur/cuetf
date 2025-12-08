package res

#azurerm_batch_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_batch_job")
	close({
		timeouts?:      #timeouts
		batch_pool_id!: string
		common_environment_properties?: [string]: string
		display_name?:       string
		id?:                 string
		name!:               string
		priority?:           number
		task_retry_maximum?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
