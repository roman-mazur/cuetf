package data

#azurerm_mobile_network_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_service")
	close({
		timeouts?:          #timeouts
		id?:                string
		location?:          string
		mobile_network_id!: string
		name!:              string
		pcc_rule?: [...close({
			name?:       string
			precedence?: number
			qos_policy?: [...close({
				allocation_and_retention_priority_level?: number
				guaranteed_bit_rate?: [...close({
					downlink?: string
					uplink?:   string
				})]
				maximum_bit_rate?: [...close({
					downlink?: string
					uplink?:   string
				})]
				preemption_capability?:    string
				preemption_vulnerability?: string
				qos_indicator?:            number
			})]
			service_data_flow_template?: [...close({
				direction?: string
				name?:      string
				ports?: [...string]
				protocol?: [...string]
				remote_ip_list?: [...string]
			})]
			traffic_control_enabled?: bool
		})]
		service_precedence?: number
		service_qos_policy?: [...close({
			allocation_and_retention_priority_level?: number
			maximum_bit_rate?: [...close({
				downlink?: string
				uplink?:   string
			})]
			preemption_capability?:    string
			preemption_vulnerability?: string
			qos_indicator?:            number
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
