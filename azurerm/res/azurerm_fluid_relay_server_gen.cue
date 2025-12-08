package res

import "list"

#azurerm_fluid_relay_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_fluid_relay_server")
	close({
		frs_tenant_id?: string
		id?:            string
		location!:      string
		name!:          string
		orderer_endpoints?: [...string]
		primary_key?:         string
		resource_group_name!: string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		secondary_key?: string
		timeouts?:      #timeouts
		service_endpoints?: [...string]
		storage_endpoints?: [...string]
		storage_sku?: string
		tags?: [string]: string
	})

	#customer_managed_key: close({
		key_vault_key_id!:          string
		user_assigned_identity_id!: string
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
