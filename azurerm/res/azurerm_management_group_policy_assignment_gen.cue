package res

import "list"

#azurerm_management_group_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_management_group_policy_assignment")
	close({
		description?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		display_name?:        string
		enforce?:             bool
		id?:                  string
		location?:            string
		management_group_id!: string
		metadata?:            string
		name!:                string
		non_compliance_message?: matchN(1, [#non_compliance_message, [...#non_compliance_message]])
		overrides?: matchN(1, [#overrides, [...#overrides]])
		not_scopes?: [...string]
		resource_selectors?: matchN(1, [#resource_selectors, [...#resource_selectors]])
		timeouts?:             #timeouts
		parameters?:           string
		policy_definition_id!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#non_compliance_message: close({
		content!:                        string
		policy_definition_reference_id?: string
	})

	#overrides: close({
		selectors?: matchN(1, [_#defs."/$defs/overrides/$defs/selectors", [..._#defs."/$defs/overrides/$defs/selectors"]])
		value!: string
	})

	#resource_selectors: close({
		selectors!: matchN(1, [_#defs."/$defs/resource_selectors/$defs/selectors", [_, ...] & [..._#defs."/$defs/resource_selectors/$defs/selectors"]])
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/overrides/$defs/selectors": close({
		in?: [...string]
		kind?: string
		not_in?: [...string]
	})

	_#defs: "/$defs/resource_selectors/$defs/selectors": close({
		in?: [...string]
		kind!: string
		not_in?: [...string]
	})
}
