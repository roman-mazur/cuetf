package res

#azurerm_monitor_data_collection_rule_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_data_collection_rule_association")
	close({
		timeouts?:                    #timeouts
		data_collection_endpoint_id?: string
		data_collection_rule_id?:     string
		description?:                 string
		id?:                          string
		name?:                        string
		target_resource_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
