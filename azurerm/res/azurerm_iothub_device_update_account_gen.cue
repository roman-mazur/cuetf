package res

import "list"

#azurerm_iothub_device_update_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_device_update_account")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		host_name?:                     string
		id?:                            string
		location!:                      string
		name!:                          string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku?:                           string
		tags?: [string]: string
		timeouts?: #timeouts
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
