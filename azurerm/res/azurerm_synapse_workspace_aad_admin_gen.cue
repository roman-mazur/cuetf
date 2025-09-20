package res

#azurerm_synapse_workspace_aad_admin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_workspace_aad_admin")
	close({
		timeouts?:             #timeouts
		id?:                   string
		login!:                string
		object_id!:            string
		synapse_workspace_id!: string
		tenant_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
