package data

#azurerm_mobile_network_sim_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_sim_policy")
	close({
		default_slice_id?:                       string
		id?:                                     string
		location?:                               string
		mobile_network_id!:                      string
		name!:                                   string
		rat_frequency_selection_priority_index?: number
		registration_timer_in_seconds?:          number
		timeouts?:                               #timeouts
		slice?: [...close({
			data_network?: [...close({
				additional_allowed_session_types?: [...string]
				allocation_and_retention_priority_level?: number
				allowed_services_ids?: [...string]
				data_network_id?:          string
				default_session_type?:     string
				max_buffered_packets?:     number
				preemption_capability?:    string
				preemption_vulnerability?: string
				qos_indicator?:            number
				session_aggregate_maximum_bit_rate?: [...close({
					downlink?: string
					uplink?:   string
				})]
			})]
			default_data_network_id?: string
			slice_id?:                string
		})]
		tags?: [string]: string
		user_equipment_aggregate_maximum_bit_rate?: [...close({
			downlink?: string
			uplink?:   string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
