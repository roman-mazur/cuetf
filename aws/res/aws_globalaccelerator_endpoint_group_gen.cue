package res

import "list"

#aws_globalaccelerator_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_globalaccelerator_endpoint_group")
	close({
		arn?:                           string
		endpoint_group_region?:         string
		health_check_interval_seconds?: number
		health_check_path?:             string
		health_check_port?:             number
		health_check_protocol?:         string
		endpoint_configuration?: matchN(1, [#endpoint_configuration, [...#endpoint_configuration]])
		id?: string
		port_override?: matchN(1, [#port_override, list.MaxItems(10) & [...#port_override]])
		timeouts?:                #timeouts
		listener_arn!:            string
		threshold_count?:         number
		traffic_dial_percentage?: number
	})

	#endpoint_configuration: close({
		attachment_arn?:                 string
		client_ip_preservation_enabled?: bool
		endpoint_id?:                    string
		weight?:                         number
	})

	#port_override: close({
		endpoint_port!: number
		listener_port!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
