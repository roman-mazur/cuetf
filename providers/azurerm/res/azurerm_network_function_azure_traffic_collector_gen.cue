package res

#azurerm_network_function_azure_traffic_collector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_function_azure_traffic_collector")
	close({
		timeouts?: #timeouts
		collector_policy_ids?: [...string]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		virtual_hub_id?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
