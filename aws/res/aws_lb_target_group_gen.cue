package res

import "list"

#aws_lb_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lb_target_group")
	arn?:                                string
	arn_suffix?:                         string
	connection_termination?:             bool
	deregistration_delay?:               string
	id?:                                 string
	ip_address_type?:                    string
	lambda_multi_value_headers_enabled?: bool
	load_balancing_algorithm_type?:      string
	load_balancing_cross_zone_enabled?:  string
	name?:                               string
	name_prefix?:                        string
	port?:                               number
	preserve_client_ip?:                 string
	protocol?:                           string
	protocol_version?:                   string
	proxy_protocol_v2?:                  bool
	slow_start?:                         number
	tags?: [string]: string
	tags_all?: [string]: string
	target_type?:     string
	vpc_id?:          string
	health_check?:    #health_check | list.MaxItems(1) & [...#health_check]
	stickiness?:      #stickiness | list.MaxItems(1) & [...#stickiness]
	target_failover?: #target_failover | [...#target_failover]

	#health_check: {
		enabled?:             bool
		healthy_threshold?:   number
		interval?:            number
		matcher?:             string
		path?:                string
		port?:                string
		protocol?:            string
		timeout?:             number
		unhealthy_threshold?: number
	}

	#stickiness: {
		cookie_duration?: number
		cookie_name?:     string
		enabled?:         bool
		type:             string
	}

	#target_failover: {
		on_deregistration: string
		on_unhealthy:      string
	}
}
