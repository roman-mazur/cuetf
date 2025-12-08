package res

import "list"

#azurerm_static_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_static_site")
	close({
		api_key?: string
		app_settings?: [string]: string
		default_host_name?:   string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		sku_size?: string
		timeouts?: #timeouts
		sku_tier?: string
		tags?: [string]: string
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
