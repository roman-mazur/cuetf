package res

import "list"

#aws_globalaccelerator_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_globalaccelerator_endpoint_group")
	arn?:                           string
	endpoint_group_region?:         string
	health_check_interval_seconds?: number
	health_check_path?:             string
	health_check_port?:             number
	health_check_protocol?:         string
	id?:                            string
	listener_arn:                   string
	threshold_count?:               number
	traffic_dial_percentage?:       number
	endpoint_configuration?:        #endpoint_configuration | [...#endpoint_configuration]
	port_override?:                 #port_override | list.MaxItems(10) & [...#port_override]
	timeouts?:                      #timeouts

	#endpoint_configuration: {
		client_ip_preservation_enabled?: bool
		endpoint_id?:                    string
		weight?:                         number
	}

	#port_override: {
		endpoint_port: number
		listener_port: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
