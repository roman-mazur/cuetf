package res

#azurerm_kusto_cluster_managed_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_cluster_managed_private_endpoint")
	close({
		timeouts?:                     #timeouts
		cluster_name!:                 string
		group_id!:                     string
		id?:                           string
		name!:                         string
		private_link_resource_id!:     string
		private_link_resource_region?: string
		request_message?:              string
		resource_group_name!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
