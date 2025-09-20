package res

import "list"

#azurerm_dev_center: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		dev_center_uri?:                    string
		id?:                                string
		location!:                          string
		name!:                              string
		project_catalog_item_sync_enabled?: bool
		resource_group_name!:               string
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
