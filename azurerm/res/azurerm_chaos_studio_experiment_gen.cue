package res

import "list"

#azurerm_chaos_studio_experiment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_chaos_studio_experiment")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		selectors!: matchN(1, [#selectors, [_, ...] & [...#selectors]])
		steps!: matchN(1, [#steps, [_, ...] & [...#steps]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#selectors: close({
		chaos_studio_target_ids!: [...string]
		name!: string
	})

	#steps: close({
		branch!: matchN(1, [_#defs."/$defs/steps/$defs/branch", [_, ...] & [..._#defs."/$defs/steps/$defs/branch"]])
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/steps/$defs/branch": close({
		actions!: matchN(1, [_#defs."/$defs/steps/$defs/branch/$defs/actions", [_, ...] & [..._#defs."/$defs/steps/$defs/branch/$defs/actions"]])
		name!: string
	})

	_#defs: "/$defs/steps/$defs/branch/$defs/actions": close({
		action_type!: string
		duration?:    string
		parameters?: [string]: string
		selector_name?: string
		urn?:           string
	})
}
