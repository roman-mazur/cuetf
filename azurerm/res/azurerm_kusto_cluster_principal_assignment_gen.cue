package res

#azurerm_kusto_cluster_principal_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_cluster_principal_assignment")
	close({
		cluster_name!:        string
		id?:                  string
		name!:                string
		principal_id!:        string
		principal_name?:      string
		principal_type!:      string
		resource_group_name!: string
		timeouts?:            #timeouts
		role!:                string
		tenant_id!:           string
		tenant_name?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
