package res

import "list"

#azurerm_automation_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_account")
	close({
		dsc_primary_access_key?: string
		encryption?: matchN(1, [#encryption, [...#encryption]])
		dsc_secondary_access_key?:     string
		dsc_server_endpoint?:          string
		hybrid_service_url?:           string
		id?:                           string
		local_authentication_enabled?: bool
		location!:                     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!: string
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku_name!:                      string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#encryption: close({
		key_vault_key_id!:          string
		user_assigned_identity_id?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
