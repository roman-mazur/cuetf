package res

import "list"

#azurerm_virtual_machine_scale_set_standby_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_scale_set_standby_pool")
	close({
		elasticity_profile!: matchN(1, [#elasticity_profile, list.MaxItems(1) & [_, ...] & [...#elasticity_profile]])
		attached_virtual_machine_scale_set_id!: string
		id?:                                    string
		location!:                              string
		name!:                                  string
		resource_group_name!:                   string
		tags?: [string]: string
		virtual_machine_state!: string
		timeouts?:              #timeouts
	})

	#elasticity_profile: close({
		max_ready_capacity!: number
		min_ready_capacity!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
