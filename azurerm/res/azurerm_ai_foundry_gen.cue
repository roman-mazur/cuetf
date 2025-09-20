package res

import "list"

#azurerm_ai_foundry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ai_foundry")
	close({
		application_insights_id?:      string
		container_registry_id?:        string
		description?:                  string
		discovery_url?:                string
		friendly_name?:                string
		high_business_impact_enabled?: bool
		id?:                           string
		key_vault_id!:                 string
		location!:                     string
		name!:                         string
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		managed_network?: matchN(1, [#managed_network, list.MaxItems(1) & [...#managed_network]])
		primary_user_assigned_identity?: string
		public_network_access?:          string
		resource_group_name!:            string
		storage_account_id!:             string
		tags?: [string]: string
		workspace_id?: string
		timeouts?:     #timeouts
	})

	#encryption: close({
		key_id!:                    string
		key_vault_id!:              string
		user_assigned_identity_id?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#managed_network: close({
		isolation_mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
