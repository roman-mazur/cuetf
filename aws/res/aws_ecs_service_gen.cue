package res

import "list"

#aws_ecs_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_service")
	close({
		arn?:                           string
		availability_zone_rebalancing?: string
		cluster?:                       string
		deployment_maximum_percent?:    number
		alarms?: matchN(1, [#alarms, list.MaxItems(1) & [...#alarms]])
		deployment_minimum_healthy_percent?: number
		desired_count?:                      number
		enable_ecs_managed_tags?:            bool
		enable_execute_command?:             bool
		force_delete?:                       bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		force_new_deployment?:              bool
		health_check_grace_period_seconds?: number
		capacity_provider_strategy?: matchN(1, [#capacity_provider_strategy, [...#capacity_provider_strategy]])
		iam_role?:            string
		id?:                  string
		launch_type?:         string
		name!:                string
		platform_version?:    string
		propagate_tags?:      string
		scheduling_strategy?: string
		sigint_rollback?:     bool
		tags?: [string]:     string
		tags_all?: [string]: string
		task_definition?: string
		triggers?: [string]: string
		deployment_circuit_breaker?: matchN(1, [#deployment_circuit_breaker, list.MaxItems(1) & [...#deployment_circuit_breaker]])
		deployment_configuration?: matchN(1, [#deployment_configuration, list.MaxItems(1) & [...#deployment_configuration]])
		deployment_controller?: matchN(1, [#deployment_controller, list.MaxItems(1) & [...#deployment_controller]])
		load_balancer?: matchN(1, [#load_balancer, [...#load_balancer]])
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		ordered_placement_strategy?: matchN(1, [#ordered_placement_strategy, list.MaxItems(5) & [...#ordered_placement_strategy]])
		placement_constraints?: matchN(1, [#placement_constraints, list.MaxItems(10) & [...#placement_constraints]])
		wait_for_steady_state?: bool
		service_connect_configuration?: matchN(1, [#service_connect_configuration, list.MaxItems(1) & [...#service_connect_configuration]])
		service_registries?: matchN(1, [#service_registries, list.MaxItems(1) & [...#service_registries]])
		timeouts?: #timeouts
		volume_configuration?: matchN(1, [#volume_configuration, list.MaxItems(1) & [...#volume_configuration]])
		vpc_lattice_configurations?: matchN(1, [#vpc_lattice_configurations, [...#vpc_lattice_configurations]])
	})

	#alarms: close({
		alarm_names!: [...string]
		enable!:   bool
		rollback!: bool
	})

	#capacity_provider_strategy: close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})

	#deployment_circuit_breaker: close({
		enable!:   bool
		rollback!: bool
	})

	#deployment_configuration: close({
		canary_configuration?: matchN(1, [_#defs."/$defs/deployment_configuration/$defs/canary_configuration", list.MaxItems(1) & [..._#defs."/$defs/deployment_configuration/$defs/canary_configuration"]])
		lifecycle_hook?: matchN(1, [_#defs."/$defs/deployment_configuration/$defs/lifecycle_hook", [..._#defs."/$defs/deployment_configuration/$defs/lifecycle_hook"]])
		linear_configuration?: matchN(1, [_#defs."/$defs/deployment_configuration/$defs/linear_configuration", list.MaxItems(1) & [..._#defs."/$defs/deployment_configuration/$defs/linear_configuration"]])
		bake_time_in_minutes?: string
		strategy?:             string
	})

	#deployment_controller: close({
		type?: string
	})

	#load_balancer: close({
		advanced_configuration?: matchN(1, [_#defs."/$defs/load_balancer/$defs/advanced_configuration", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/advanced_configuration"]])
		container_name!:   string
		container_port!:   number
		elb_name?:         string
		target_group_arn?: string
	})

	#network_configuration: close({
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	})

	#ordered_placement_strategy: close({
		field?: string
		type!:  string
	})

	#placement_constraints: close({
		expression?: string
		type!:       string
	})

	#service_connect_configuration: close({
		log_configuration?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/log_configuration", list.MaxItems(1) & [..._#defs."/$defs/service_connect_configuration/$defs/log_configuration"]])
		service?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service", [..._#defs."/$defs/service_connect_configuration/$defs/service"]])
		enabled!:   bool
		namespace?: string
	})

	#service_registries: close({
		container_name?: string
		container_port?: number
		port?:           number
		registry_arn!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#volume_configuration: close({
		managed_ebs_volume!: matchN(1, [_#defs."/$defs/volume_configuration/$defs/managed_ebs_volume", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/volume_configuration/$defs/managed_ebs_volume"]])
		name!: string
	})

	#vpc_lattice_configurations: close({
		port_name!:        string
		role_arn!:         string
		target_group_arn!: string
	})

	_#defs: "/$defs/deployment_configuration/$defs/canary_configuration": close({
		canary_bake_time_in_minutes?: string
		canary_percent?:              number
	})

	_#defs: "/$defs/deployment_configuration/$defs/lifecycle_hook": close({
		hook_details?:    string
		hook_target_arn!: string
		lifecycle_stages!: [...string]
		role_arn!: string
	})

	_#defs: "/$defs/deployment_configuration/$defs/linear_configuration": close({
		step_bake_time_in_minutes?: string
		step_percent?:              number
	})

	_#defs: "/$defs/load_balancer/$defs/advanced_configuration": close({
		alternate_target_group_arn!: string
		production_listener_rule!:   string
		role_arn!:                   string
		test_listener_rule?:         string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/log_configuration": close({
		secret_option?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/log_configuration/$defs/secret_option", [..._#defs."/$defs/service_connect_configuration/$defs/log_configuration/$defs/secret_option"]])
		log_driver!: string
		options?: [string]: string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/log_configuration/$defs/secret_option": close({
		name!:       string
		value_from!: string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service": close({
		client_alias?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias", list.MaxItems(1) & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias"]])
		timeout?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/timeout"]])
		tls?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/tls", list.MaxItems(1) & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/tls"]])
		discovery_name?:        string
		ingress_port_override?: number
		port_name!:             string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/client_alias": close({
		test_traffic_rules?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules", [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules"]])
		dns_name?: string
		port!:     number
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules": close({
		header?: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header", list.MaxItems(1) & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header"]])
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header": close({
		value!: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header/$defs/value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header/$defs/value"]])
		name!: string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/client_alias/$defs/test_traffic_rules/$defs/header/$defs/value": close({
		exact!: string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/timeout": close({
		idle_timeout_seconds?:        number
		per_request_timeout_seconds?: number
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/tls": close({
		issuer_cert_authority!: matchN(1, [_#defs."/$defs/service_connect_configuration/$defs/service/$defs/tls/$defs/issuer_cert_authority", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/service_connect_configuration/$defs/service/$defs/tls/$defs/issuer_cert_authority"]])
		kms_key?:  string
		role_arn?: string
	})

	_#defs: "/$defs/service_connect_configuration/$defs/service/$defs/tls/$defs/issuer_cert_authority": close({
		aws_pca_authority_arn!: string
	})

	_#defs: "/$defs/volume_configuration/$defs/managed_ebs_volume": close({
		encrypted?:        bool
		file_system_type?: string
		iops?:             number
		kms_key_id?:       string
		role_arn!:         string
		size_in_gb?:       number
		snapshot_id?:      string
		tag_specifications?: matchN(1, [_#defs."/$defs/volume_configuration/$defs/managed_ebs_volume/$defs/tag_specifications", [..._#defs."/$defs/volume_configuration/$defs/managed_ebs_volume/$defs/tag_specifications"]])
		throughput?:                 number
		volume_initialization_rate?: number
		volume_type?:                string
	})

	_#defs: "/$defs/volume_configuration/$defs/managed_ebs_volume/$defs/tag_specifications": close({
		propagate_tags?: string
		resource_type!:  string
		tags?: [string]: string
	})
}
