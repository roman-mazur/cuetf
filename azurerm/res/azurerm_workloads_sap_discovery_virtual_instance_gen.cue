package res

import "list"

#azurerm_workloads_sap_discovery_virtual_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_workloads_sap_discovery_virtual_instance")
	close({
		central_server_virtual_machine_id!:     string
		environment!:                           string
		id?:                                    string
		location!:                              string
		managed_resource_group_name?:           string
		managed_resources_network_access_type?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		managed_storage_account_name?: string
		name!:                         string
		timeouts?:                     #timeouts
		resource_group_name!:          string
		sap_product!:                  string
		tags?: [string]: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
