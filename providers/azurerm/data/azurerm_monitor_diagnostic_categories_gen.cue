package data

#azurerm_monitor_diagnostic_categories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_monitor_diagnostic_categories")
	close({
		timeouts?: #timeouts
		id?:       string
		log_category_groups?: [...string]
		log_category_types?: [...string]
		metrics?: [...string]
		resource_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
