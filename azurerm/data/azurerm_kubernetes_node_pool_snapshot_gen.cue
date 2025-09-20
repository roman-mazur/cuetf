package data

#azurerm_kubernetes_node_pool_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_node_pool_snapshot")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		resource_group_name!: string
		source_node_pool_id?: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
