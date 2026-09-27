package res

import "list"

azurerm_storage_discovery_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_discovery_workspace")
	close({
		scope!: matchN(1, [#scope, list.MaxItems(10) & [_, ...] & [...#scope]])
		timeouts?:            #timeouts
		description?:         string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
		workspace_roots!: [...string]
	})

	#scope: close({
		display_name!: string
		resource_types!: [...string]
		tag_keys_only?: [...string]
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
