package res

import "list"

#azurerm_maintenance_assignment_dynamic_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_maintenance_assignment_dynamic_scope")
	close({
		filter?: matchN(1, [#filter, list.MaxItems(1) & [_, ...] & [...#filter]])
		timeouts?:                     #timeouts
		id?:                           string
		maintenance_configuration_id!: string
		name!:                         string
	})

	#filter: close({
		tags?: matchN(1, [_#defs."/$defs/filter/$defs/tags", [..._#defs."/$defs/filter/$defs/tags"]])
		locations?: [...string]
		os_types?: [...string]
		resource_groups?: [...string]
		resource_types?: [...string]
		tag_filter?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/filter/$defs/tags": close({
		tag!: string
		values!: [...string]
	})
}
