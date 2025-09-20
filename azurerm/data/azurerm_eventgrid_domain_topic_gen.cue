package data

#azurerm_eventgrid_domain_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventgrid_domain_topic")
	close({
		timeouts?:            #timeouts
		domain_name!:         string
		id?:                  string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
