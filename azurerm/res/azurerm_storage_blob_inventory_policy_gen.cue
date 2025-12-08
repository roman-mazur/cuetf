package res

import "list"

#azurerm_storage_blob_inventory_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_blob_inventory_policy")
	close({
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])
		timeouts?:           #timeouts
		id?:                 string
		storage_account_id!: string
	})

	#rules: close({
		filter?: matchN(1, [_#defs."/$defs/rules/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/filter"]])
		format!:   string
		name!:     string
		schedule!: string
		schema_fields!: [...string]
		scope!:                  string
		storage_container_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/filter": close({
		blob_types!: [...string]
		exclude_prefixes?: [...string]
		include_blob_versions?: bool
		include_deleted?:       bool
		include_snapshots?:     bool
		prefix_match?: [...string]
	})
}
