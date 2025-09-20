package res

#azurerm_storage_mover_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_mover_job_definition")
	close({
		agent_name?:               string
		copy_mode!:                string
		description?:              string
		id?:                       string
		name!:                     string
		source_name!:              string
		source_sub_path?:          string
		timeouts?:                 #timeouts
		storage_mover_project_id!: string
		target_name!:              string
		target_sub_path?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
