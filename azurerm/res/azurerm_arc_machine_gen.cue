package res

import "list"

#azurerm_arc_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_arc_machine")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		id?:                  string
		kind!:                string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
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
