package res

#azurerm_virtual_desktop_scaling_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_desktop_scaling_plan")
	close({
		description?:         string
		exclusion_tag?:       string
		friendly_name?:       string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		host_pool?: matchN(1, [#host_pool, [...#host_pool]])
		tags?: [string]: string
		schedule!: matchN(1, [#schedule, [_, ...] & [...#schedule]])
		timeouts?:  #timeouts
		time_zone!: string
	})

	#host_pool: close({
		hostpool_id!:          string
		scaling_plan_enabled!: bool
	})

	#schedule: close({
		days_of_week!: [...string]
		name!:                                 string
		off_peak_load_balancing_algorithm!:    string
		off_peak_start_time!:                  string
		peak_load_balancing_algorithm!:        string
		peak_start_time!:                      string
		ramp_down_capacity_threshold_percent!: number
		ramp_down_force_logoff_users!:         bool
		ramp_down_load_balancing_algorithm!:   string
		ramp_down_minimum_hosts_percent!:      number
		ramp_down_notification_message!:       string
		ramp_down_start_time!:                 string
		ramp_down_stop_hosts_when!:            string
		ramp_down_wait_time_minutes!:          number
		ramp_up_capacity_threshold_percent?:   number
		ramp_up_load_balancing_algorithm!:     string
		ramp_up_minimum_hosts_percent?:        number
		ramp_up_start_time!:                   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
