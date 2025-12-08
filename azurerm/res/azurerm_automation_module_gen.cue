package res

import "list"

#azurerm_automation_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_module")
	close({
		module_link!: matchN(1, [#module_link, list.MaxItems(1) & [_, ...] & [...#module_link]])
		automation_account_name!: string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		timeouts?:                #timeouts
	})

	#module_link: close({
		hash?: matchN(1, [_#defs."/$defs/module_link/$defs/hash", list.MaxItems(1) & [..._#defs."/$defs/module_link/$defs/hash"]])
		uri!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/module_link/$defs/hash": close({
		algorithm!: string
		value!:     string
	})
}
