package res

#azurerm_eventgrid_namespace_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_namespace_topic")
	close({
		timeouts?:                #timeouts
		event_retention_in_days?: number
		eventgrid_namespace_id!:  string
		id?:                      string
		name!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
