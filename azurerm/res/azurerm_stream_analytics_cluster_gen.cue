package res

#azurerm_stream_analytics_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_cluster")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		streaming_capacity!:  number
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
