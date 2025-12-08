package res

import "list"

#azurerm_stack_hci_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stack_hci_cluster")
	close({
		automanage_configuration_id?: string
		client_id?:                   string
		cloud_id?:                    string
		id?:                          string
		location!:                    string
		name!:                        string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		resource_group_name!:         string
		resource_provider_object_id?: string
		timeouts?:                    #timeouts
		service_endpoint?:            string
		tags?: [string]: string
		tenant_id?: string
	})

	#identity: close({
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
