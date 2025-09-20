package res

import "list"

#azurerm_blueprint_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_blueprint_assignment")
	close({
		blueprint_name?: string
		description?:    string
		display_name?:   string
		id?:             string
		location!:       string
		lock_exclude_actions?: [...string]
		lock_exclude_principals?: [...string]
		lock_mode?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		name!:                   string
		parameter_values?:       string
		resource_groups?:        string
		timeouts?:               #timeouts
		target_subscription_id!: string
		type?:                   string
		version_id!:             string
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
