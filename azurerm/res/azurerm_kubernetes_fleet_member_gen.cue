package res

#azurerm_kubernetes_fleet_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_fleet_member")
	close({
		timeouts?:              #timeouts
		group?:                 string
		id?:                    string
		kubernetes_cluster_id!: string
		kubernetes_fleet_id!:   string
		name!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
