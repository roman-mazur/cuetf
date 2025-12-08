package res

import "list"

#azurerm_iotcentral_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iotcentral_application")
	close({
		display_name?:                  string
		id?:                            string
		location!:                      string
		name!:                          string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku?:                           string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		sub_domain!: string
		timeouts?:   #timeouts
		tags?: [string]: string
		template?: string
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
