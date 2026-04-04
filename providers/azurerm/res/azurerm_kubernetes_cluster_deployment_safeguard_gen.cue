package res

#azurerm_kubernetes_cluster_deployment_safeguard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_cluster_deployment_safeguard")
	close({
		timeouts?: #timeouts
		excluded_namespaces?: [...string]
		id?:                           string
		kubernetes_cluster_id!:        string
		level!:                        string
		pod_security_standards_level?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
