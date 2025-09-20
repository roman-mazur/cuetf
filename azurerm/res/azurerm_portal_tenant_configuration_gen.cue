package res

#azurerm_portal_tenant_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_portal_tenant_configuration")
	close({
		timeouts?:                          #timeouts
		id?:                                string
		private_markdown_storage_enforced!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
