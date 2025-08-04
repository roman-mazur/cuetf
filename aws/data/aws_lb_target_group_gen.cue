package data

#aws_lb_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_target_group")
	close({
		arn?:                    string
		arn_suffix?:             string
		connection_termination?: bool
		deregistration_delay?:   string
		health_check?: [...close({
			enabled?:             bool
			healthy_threshold?:   number
			interval?:            number
			matcher?:             string
			path?:                string
			port?:                string
			protocol?:            string
			timeout?:             number
			unhealthy_threshold?: number
		})]
		id?:                                 string
		lambda_multi_value_headers_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		load_balancer_arns?: [...string]
		load_balancing_algorithm_type?:     string
		load_balancing_anomaly_mitigation?: string
		load_balancing_cross_zone_enabled?: string
		timeouts?:                          #timeouts
		name?:                              string
		port?:                              number
		preserve_client_ip?:                string
		protocol?:                          string
		protocol_version?:                  string
		proxy_protocol_v2?:                 bool
		slow_start?:                        number
		stickiness?: [...close({
			cookie_duration?: number
			cookie_name?:     string
			enabled?:         bool
			type?:            string
		})]
		tags?: [string]: string
		target_type?: string
		vpc_id?:      string
	})

	#timeouts: close({
		read?: string
	})
}
