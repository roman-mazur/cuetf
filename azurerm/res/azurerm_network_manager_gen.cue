package res

import "list"

#azurerm_network_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager")
	close({
		scope?: matchN(1, [#scope, list.MaxItems(1) & [_, ...] & [...#scope]])
		cross_tenant_scopes?: [...close({
			management_groups?: [...string]
			subscriptions?: [...string]
			tenant_id?: string
		})]
		description?:         string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		scope_accesses?: [...string]
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#scope: close({
		management_group_ids?: [...string]
		subscription_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
