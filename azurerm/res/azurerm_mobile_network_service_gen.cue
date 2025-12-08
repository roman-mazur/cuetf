package res

import "list"

#azurerm_mobile_network_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_service")
	close({
		pcc_rule!: matchN(1, [#pcc_rule, [_, ...] & [...#pcc_rule]])
		id?:                 string
		location!:           string
		mobile_network_id!:  string
		name!:               string
		service_precedence!: number
		tags?: [string]: string
		service_qos_policy?: matchN(1, [#service_qos_policy, list.MaxItems(1) & [...#service_qos_policy]])
		timeouts?: #timeouts
	})

	#pcc_rule: close({
		qos_policy?: matchN(1, [_#defs."/$defs/pcc_rule/$defs/qos_policy", list.MaxItems(1) & [..._#defs."/$defs/pcc_rule/$defs/qos_policy"]])
		service_data_flow_template!: matchN(1, [_#defs."/$defs/pcc_rule/$defs/service_data_flow_template", [_, ...] & [..._#defs."/$defs/pcc_rule/$defs/service_data_flow_template"]])
		name!:                    string
		precedence!:              number
		traffic_control_enabled?: bool
	})

	#service_qos_policy: close({
		maximum_bit_rate!: matchN(1, [_#defs."/$defs/service_qos_policy/$defs/maximum_bit_rate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/service_qos_policy/$defs/maximum_bit_rate"]])
		allocation_and_retention_priority_level?: number
		preemption_capability?:                   string
		preemption_vulnerability?:                string
		qos_indicator?:                           number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/pcc_rule/$defs/qos_policy": close({
		guaranteed_bit_rate?: matchN(1, [_#defs."/$defs/pcc_rule/$defs/qos_policy/$defs/guaranteed_bit_rate", list.MaxItems(1) & [..._#defs."/$defs/pcc_rule/$defs/qos_policy/$defs/guaranteed_bit_rate"]])
		allocation_and_retention_priority_level?: number
		preemption_capability?:                   string
		preemption_vulnerability?:                string
		qos_indicator!:                           number
		maximum_bit_rate!: matchN(1, [_#defs."/$defs/pcc_rule/$defs/qos_policy/$defs/maximum_bit_rate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/pcc_rule/$defs/qos_policy/$defs/maximum_bit_rate"]])
	})

	_#defs: "/$defs/pcc_rule/$defs/qos_policy/$defs/guaranteed_bit_rate": close({
		downlink!: string
		uplink!:   string
	})

	_#defs: "/$defs/pcc_rule/$defs/qos_policy/$defs/maximum_bit_rate": close({
		downlink!: string
		uplink!:   string
	})

	_#defs: "/$defs/pcc_rule/$defs/service_data_flow_template": close({
		direction!: string
		name!:      string
		ports?: [...string]
		protocol!: [...string]
		remote_ip_list!: [...string]
	})

	_#defs: "/$defs/service_qos_policy/$defs/maximum_bit_rate": close({
		downlink!: string
		uplink!:   string
	})
}
