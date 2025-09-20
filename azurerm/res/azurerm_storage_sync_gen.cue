package res

#azurerm_storage_sync: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_sync")
	close({
		timeouts?:                #timeouts
		id?:                      string
		incoming_traffic_policy?: string
		location!:                string
		name!:                    string
		registered_servers?: [...string]
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
