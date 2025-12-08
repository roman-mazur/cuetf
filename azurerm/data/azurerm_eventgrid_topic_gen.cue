package data

#azurerm_eventgrid_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_eventgrid_topic")
	close({
		timeouts?:             #timeouts
		endpoint?:             string
		id?:                   string
		location?:             string
		name!:                 string
		primary_access_key?:   string
		resource_group_name!:  string
		secondary_access_key?: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
