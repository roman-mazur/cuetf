package data

#azurerm_network_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_network_manager")
	close({
		timeouts?: #timeouts
		cross_tenant_scopes?: [...close({
			management_groups?: [...string]
			subscriptions?: [...string]
			tenant_id?: string
		})]
		description?:         string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		scope?: [...close({
			management_group_ids?: [...string]
			subscription_ids?: [...string]
		})]
		scope_accesses?: [...string]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
