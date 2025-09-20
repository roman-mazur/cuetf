package res

import "list"

#azurerm_maps_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_maps_account")
	close({
		id?:                           string
		local_authentication_enabled?: bool
		location!:                     string
		name!:                         string
		primary_access_key?:           string
		resource_group_name!:          string
		cors?: matchN(1, [#cors, list.MaxItems(1) & [...#cors]])
		data_store?: matchN(1, [#data_store, [...#data_store]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		secondary_access_key?: string
		sku_name!:             string
		tags?: [string]: string
		x_ms_client_id?: string
		timeouts?:       #timeouts
	})

	#cors: close({
		allowed_origins!: [...string]
	})

	#data_store: close({
		storage_account_id?: string
		unique_name!:        string
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
