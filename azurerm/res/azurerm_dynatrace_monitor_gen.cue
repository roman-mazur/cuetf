package res

import "list"

#azurerm_dynatrace_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dynatrace_monitor")
	close({
		id?:                       string
		location!:                 string
		marketplace_subscription!: string
		monitoring_enabled?:       bool
		name!:                     string
		resource_group_name!:      string
		tags?: [string]: string
		environment_properties?: matchN(1, [#environment_properties, [...#environment_properties]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [_, ...] & [...#plan]])
		timeouts?: #timeouts
		user?: matchN(1, [#user, list.MaxItems(1) & [_, ...] & [...#user]])
	})

	#environment_properties: close({
		environment_info?: matchN(1, [_#defs."/$defs/environment_properties/$defs/environment_info", [_, ...] & [..._#defs."/$defs/environment_properties/$defs/environment_info"]])
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#plan: close({
		billing_cycle?:  string
		effective_date?: string
		plan!:           string
		usage_type?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user: close({
		country!:      string
		email!:        string
		first_name!:   string
		last_name!:    string
		phone_number!: string
	})

	_#defs: "/$defs/environment_properties/$defs/environment_info": close({
		environment_id!: string
	})
}
