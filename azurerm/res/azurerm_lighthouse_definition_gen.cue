package res

import "list"

#azurerm_lighthouse_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_lighthouse_definition")
	close({
		authorization!: matchN(1, [#authorization, [_, ...] & [...#authorization]])
		description?:              string
		id?:                       string
		lighthouse_definition_id?: string
		managing_tenant_id!:       string
		name!:                     string
		scope!:                    string
		eligible_authorization?: matchN(1, [#eligible_authorization, [...#eligible_authorization]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		timeouts?: #timeouts
	})

	#authorization: close({
		delegated_role_definition_ids?: [...string]
		principal_display_name?: string
		principal_id!:           string
		role_definition_id!:     string
	})

	#eligible_authorization: close({
		just_in_time_access_policy?: matchN(1, [_#defs."/$defs/eligible_authorization/$defs/just_in_time_access_policy", list.MaxItems(1) & [..._#defs."/$defs/eligible_authorization/$defs/just_in_time_access_policy"]])
		principal_display_name?: string
		principal_id!:           string
		role_definition_id!:     string
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
		version!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/eligible_authorization/$defs/just_in_time_access_policy": close({
		approver?: matchN(1, [_#defs."/$defs/eligible_authorization/$defs/just_in_time_access_policy/$defs/approver", [..._#defs."/$defs/eligible_authorization/$defs/just_in_time_access_policy/$defs/approver"]])
		maximum_activation_duration?: string
		multi_factor_auth_provider?:  string
	})

	_#defs: "/$defs/eligible_authorization/$defs/just_in_time_access_policy/$defs/approver": close({
		principal_display_name?: string
		principal_id!:           string
	})
}
