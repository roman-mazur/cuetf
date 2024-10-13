package data

#aws_lb_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lb_target_group")
	arn?:                    string
	arn_suffix?:             string
	connection_termination?: bool
	deregistration_delay?:   string
	health_check?: [...{
		enabled?:             bool
		healthy_threshold?:   number
		interval?:            number
		matcher?:             string
		path?:                string
		port?:                string
		protocol?:            string
		timeout?:             number
		unhealthy_threshold?: number
	}]
	id?:                                 string
	lambda_multi_value_headers_enabled?: bool
	load_balancer_arns?: [...string]
	load_balancing_algorithm_type?:     string
	load_balancing_anomaly_mitigation?: string
	load_balancing_cross_zone_enabled?: string
	name?:                              string
	port?:                              number
	preserve_client_ip?:                string
	protocol?:                          string
	protocol_version?:                  string
	proxy_protocol_v2?:                 bool
	slow_start?:                        number
	stickiness?: [...{
		cookie_duration?: number
		cookie_name?:     string
		enabled?:         bool
		type?:            string
	}]
	tags?: [string]: string
	target_type?: string
	vpc_id?:      string
	timeouts?:    #timeouts

	#timeouts: read?: string
}
