package res

import "list"

#azurerm_mobile_network_sim_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_sim_policy")
	close({
		default_slice_id!:  string
		id?:                string
		location!:          string
		mobile_network_id!: string
		slice!: matchN(1, [#slice, [_, ...] & [...#slice]])
		name!:                                   string
		rat_frequency_selection_priority_index?: number
		registration_timer_in_seconds?:          number
		tags?: [string]: string
		timeouts?: #timeouts
		user_equipment_aggregate_maximum_bit_rate!: matchN(1, [#user_equipment_aggregate_maximum_bit_rate, list.MaxItems(1) & [_, ...] & [...#user_equipment_aggregate_maximum_bit_rate]])
	})

	#slice: close({
		data_network!: matchN(1, [_#defs."/$defs/slice/$defs/data_network", [_, ...] & [..._#defs."/$defs/slice/$defs/data_network"]])
		default_data_network_id!: string
		slice_id!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user_equipment_aggregate_maximum_bit_rate: close({
		downlink!: string
		uplink!:   string
	})

	_#defs: "/$defs/slice/$defs/data_network": close({
		session_aggregate_maximum_bit_rate!: matchN(1, [_#defs."/$defs/slice/$defs/data_network/$defs/session_aggregate_maximum_bit_rate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/slice/$defs/data_network/$defs/session_aggregate_maximum_bit_rate"]])
		additional_allowed_session_types?: [...string]
		allocation_and_retention_priority_level?: number
		allowed_services_ids!: [...string]
		data_network_id!:          string
		default_session_type?:     string
		max_buffered_packets?:     number
		preemption_capability?:    string
		preemption_vulnerability?: string
		qos_indicator!:            number
	})

	_#defs: "/$defs/slice/$defs/data_network/$defs/session_aggregate_maximum_bit_rate": close({
		downlink!: string
		uplink!:   string
	})
}
