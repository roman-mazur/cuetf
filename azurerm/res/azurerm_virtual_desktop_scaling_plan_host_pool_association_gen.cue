package res

#azurerm_virtual_desktop_scaling_plan_host_pool_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_desktop_scaling_plan_host_pool_association")
	close({
		timeouts?:        #timeouts
		enabled!:         bool
		host_pool_id!:    string
		id?:              string
		scaling_plan_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
