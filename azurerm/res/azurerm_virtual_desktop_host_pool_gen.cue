package res

import "list"

#azurerm_virtual_desktop_host_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_desktop_host_pool")
	close({
		custom_rdp_properties?: string
		scheduled_agent_updates?: matchN(1, [#scheduled_agent_updates, list.MaxItems(1) & [...#scheduled_agent_updates]])
		description?:              string
		friendly_name?:            string
		id?:                       string
		load_balancer_type!:       string
		location!:                 string
		maximum_sessions_allowed?: number
		name!:                     string

		// Preferred App Group type to display
		preferred_app_group_type?:         string
		personal_desktop_assignment_type?: string
		timeouts?:                         #timeouts
		public_network_access?:            string
		resource_group_name!:              string
		start_vm_on_connect?:              bool
		tags?: [string]: string
		type!:                 string
		validate_environment?: bool
		vm_template?:          string
	})

	#scheduled_agent_updates: close({
		schedule?: matchN(1, [_#defs."/$defs/scheduled_agent_updates/$defs/schedule", list.MaxItems(2) & [..._#defs."/$defs/scheduled_agent_updates/$defs/schedule"]])
		enabled?:                   bool
		timezone?:                  string
		use_session_host_timezone?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/scheduled_agent_updates/$defs/schedule": close({
		day_of_week!: string
		hour_of_day!: number
	})
}
