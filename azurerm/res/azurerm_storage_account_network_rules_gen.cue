package res

#azurerm_storage_account_network_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_account_network_rules")
	close({
		private_link_access?: matchN(1, [#private_link_access, [...#private_link_access]])
		bypass?: [...string]
		default_action!: string
		id?:             string
		ip_rules?: [...string]
		storage_account_id!: string
		virtual_network_subnet_ids?: [...string]
		timeouts?: #timeouts
	})

	#private_link_access: close({
		endpoint_resource_id!: string
		endpoint_tenant_id?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
