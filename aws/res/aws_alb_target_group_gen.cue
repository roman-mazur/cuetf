package res

import "list"

#aws_alb_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_alb_target_group")
	close({
		arn?:                                string
		arn_suffix?:                         string
		connection_termination?:             bool
		deregistration_delay?:               string
		id?:                                 string
		ip_address_type?:                    string
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
		name?:                              string
		name_prefix?:                       string
		health_check?: matchN(1, [#health_check, list.MaxItems(1) & [...#health_check]])
		port?:               number
		preserve_client_ip?: string
		protocol?:           string
		protocol_version?:   string
		proxy_protocol_v2?:  bool
		stickiness?: matchN(1, [#stickiness, list.MaxItems(1) & [...#stickiness]])
		slow_start?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		target_type?: string
		target_failover?: matchN(1, [#target_failover, [...#target_failover]])
		target_group_health?: matchN(1, [#target_group_health, list.MaxItems(1) & [...#target_group_health]])
		target_health_state?: matchN(1, [#target_health_state, [...#target_health_state]])
		vpc_id?: string
	})

	#health_check: close({
		enabled?:             bool
		healthy_threshold?:   number
		interval?:            number
		matcher?:             string
		path?:                string
		port?:                string
		protocol?:            string
		timeout?:             number
		unhealthy_threshold?: number
	})

	#stickiness: close({
		cookie_duration?: number
		cookie_name?:     string
		enabled?:         bool
		type!:            string
	})

	#target_failover: close({
		on_deregistration!: string
		on_unhealthy!:      string
	})

	#target_group_health: close({
		dns_failover?: matchN(1, [_#defs."/$defs/target_group_health/$defs/dns_failover", list.MaxItems(1) & [..._#defs."/$defs/target_group_health/$defs/dns_failover"]])
		unhealthy_state_routing?: matchN(1, [_#defs."/$defs/target_group_health/$defs/unhealthy_state_routing", list.MaxItems(1) & [..._#defs."/$defs/target_group_health/$defs/unhealthy_state_routing"]])
	})

	#target_health_state: close({
		enable_unhealthy_connection_termination!: bool
		unhealthy_draining_interval?:             number
	})

	_#defs: "/$defs/target_group_health/$defs/dns_failover": close({
		minimum_healthy_targets_count?:      string
		minimum_healthy_targets_percentage?: string
	})

	_#defs: "/$defs/target_group_health/$defs/unhealthy_state_routing": close({
		minimum_healthy_targets_count?:      number
		minimum_healthy_targets_percentage?: string
	})
}
