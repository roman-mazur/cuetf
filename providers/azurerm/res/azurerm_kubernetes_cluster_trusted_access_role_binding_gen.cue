package res

#azurerm_kubernetes_cluster_trusted_access_role_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_cluster_trusted_access_role_binding")
	close({
		timeouts?:              #timeouts
		id?:                    string
		kubernetes_cluster_id!: string
		name!:                  string
		roles!: [...string]
		source_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
