package res

#azurerm_sentinel_watchlist: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_watchlist")
	close({
		timeouts?:         #timeouts
		default_duration?: string
		description?:      string
		display_name!:     string
		id?:               string
		item_search_key!:  string
		labels?: [...string]
		log_analytics_workspace_id!: string
		name!:                       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
