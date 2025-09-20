package res

#azurerm_log_analytics_saved_search: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_saved_search")
	close({
		timeouts?:       #timeouts
		category!:       string
		display_name!:   string
		function_alias?: string
		function_parameters?: [...string]
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		query!:                      string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
