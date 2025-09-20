package res

#azurerm_synapse_private_link_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_private_link_hub")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location!:            string
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
