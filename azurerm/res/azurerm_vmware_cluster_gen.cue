package res

#azurerm_vmware_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_vmware_cluster")
	close({
		timeouts?:           #timeouts
		cluster_node_count!: number
		cluster_number?:     number
		hosts?: [...string]
		id?:              string
		name!:            string
		sku_name!:        string
		vmware_cloud_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
