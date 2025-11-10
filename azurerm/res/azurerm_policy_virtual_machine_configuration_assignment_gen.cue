package res

import "list"

#azurerm_policy_virtual_machine_configuration_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_policy_virtual_machine_configuration_assignment")
	close({
		configuration!: matchN(1, [#configuration, list.MaxItems(1) & [_, ...] & [...#configuration]])
		id?:                 string
		location!:           string
		name!:               string
		virtual_machine_id!: string
		timeouts?:           #timeouts
	})

	#configuration: close({
		parameter?: matchN(1, [_#defs."/$defs/configuration/$defs/parameter", [..._#defs."/$defs/configuration/$defs/parameter"]])
		assignment_type?: string
		content_hash?:    string
		content_uri?:     string
		version?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/parameter": close({
		name!:  string
		value!: string
	})
}
