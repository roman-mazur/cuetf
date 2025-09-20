package res

#azurerm_container_registry_agent_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_registry_agent_pool")
	close({
		timeouts?:                #timeouts
		container_registry_name!: string
		id?:                      string
		instance_count?:          number
		location!:                string
		name!:                    string
		resource_group_name!:     string
		tags?: [string]: string
		tier?:                      string
		virtual_network_subnet_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
