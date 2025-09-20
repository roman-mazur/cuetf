package res

#azurerm_graph_services_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_graph_services_account")
	close({
		timeouts?:            #timeouts
		application_id!:      string
		billing_plan_id?:     string
		id?:                  string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
