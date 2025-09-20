package data

#azurerm_virtual_desktop_host_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_desktop_host_pool")
	close({
		custom_rdp_properties?:            string
		description?:                      string
		friendly_name?:                    string
		id?:                               string
		load_balancer_type?:               string
		location?:                         string
		maximum_sessions_allowed?:         number
		name!:                             string
		personal_desktop_assignment_type?: string
		timeouts?:                         #timeouts
		preferred_app_group_type?:         string
		resource_group_name!:              string
		scheduled_agent_updates?: [...close({
			enabled?: bool
			schedule?: [...close({
				day_of_week?: string
				hour_of_day?: number
			})]
			timezone?:                  string
			use_session_host_timezone?: bool
		})]
		start_vm_on_connect?: bool
		tags?: [string]: string
		type?:                 string
		validate_environment?: bool
	})

	#timeouts: close({
		read?: string
	})
}
