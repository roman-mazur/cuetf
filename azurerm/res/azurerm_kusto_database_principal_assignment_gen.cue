package res

#azurerm_kusto_database_principal_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kusto_database_principal_assignment")
	close({
		cluster_name!:        string
		database_name!:       string
		id?:                  string
		name!:                string
		principal_id!:        string
		principal_name?:      string
		principal_type!:      string
		resource_group_name!: string
		role!:                string
		timeouts?:            #timeouts
		tenant_id!:           string
		tenant_name?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
