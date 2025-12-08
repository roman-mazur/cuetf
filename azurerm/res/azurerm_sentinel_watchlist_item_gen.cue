package res

#azurerm_sentinel_watchlist_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_watchlist_item")
	close({
		timeouts?: #timeouts
		id?:       string
		name?:     string
		properties!: [string]: string
		watchlist_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
