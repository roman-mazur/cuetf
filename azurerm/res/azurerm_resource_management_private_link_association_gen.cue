package res

#azurerm_resource_management_private_link_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_resource_management_private_link_association")
	close({
		timeouts?:                            #timeouts
		id?:                                  string
		management_group_id!:                 string
		name?:                                string
		public_network_access_enabled!:       bool
		resource_management_private_link_id!: string
		tenant_id?:                           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
