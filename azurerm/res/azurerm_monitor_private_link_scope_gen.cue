package res

#azurerm_monitor_private_link_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_private_link_scope")
	close({
		timeouts?:              #timeouts
		id?:                    string
		ingestion_access_mode?: string
		name!:                  string
		query_access_mode?:     string
		resource_group_name!:   string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
