package res

#azurerm_digital_twins_endpoint_eventgrid: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_digital_twins_endpoint_eventgrid")
	close({
		timeouts?:                             #timeouts
		dead_letter_storage_secret?:           string
		digital_twins_id!:                     string
		eventgrid_topic_endpoint!:             string
		eventgrid_topic_primary_access_key!:   string
		eventgrid_topic_secondary_access_key!: string
		id?:                                   string
		name!:                                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
