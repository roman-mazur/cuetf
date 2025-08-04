package res

import "list"

#aws_autoscaling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_group")
	close({
		arn?: string
		availability_zones?: [...string]
		capacity_rebalance?:      bool
		context?:                 string
		default_cooldown?:        number
		default_instance_warmup?: number
		desired_capacity?:        number
		desired_capacity_type?:   string
		enabled_metrics?: [...string]
		force_delete?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		force_delete_warm_pool?:           bool
		health_check_grace_period?:        number
		health_check_type?:                string
		id?:                               string
		ignore_failed_scaling_activities?: bool
		launch_configuration?:             string
		availability_zone_distribution?: matchN(1, [#availability_zone_distribution, list.MaxItems(1) & [...#availability_zone_distribution]])
		load_balancers?: [...string]
		max_instance_lifetime?: number
		max_size!:              number
		metrics_granularity?:   string
		min_elb_capacity?:      number
		min_size!:              number
		name?:                  string
		capacity_reservation_specification?: matchN(1, [#capacity_reservation_specification, list.MaxItems(1) & [...#capacity_reservation_specification]])
		initial_lifecycle_hook?: matchN(1, [#initial_lifecycle_hook, [...#initial_lifecycle_hook]])
		name_prefix?:             string
		placement_group?:         string
		predicted_capacity?:      number
		protect_from_scale_in?:   bool
		service_linked_role_arn?: string
		suspended_processes?: [...string]
		target_group_arns?: [...string]
		termination_policies?: [...string]
		vpc_zone_identifier?: [...string]
		wait_for_capacity_timeout?: string
		wait_for_elb_capacity?:     number
		instance_maintenance_policy?: matchN(1, [#instance_maintenance_policy, list.MaxItems(1) & [...#instance_maintenance_policy]])
		instance_refresh?: matchN(1, [#instance_refresh, list.MaxItems(1) & [...#instance_refresh]])
		launch_template?: matchN(1, [#launch_template, list.MaxItems(1) & [...#launch_template]])
		mixed_instances_policy?: matchN(1, [#mixed_instances_policy, list.MaxItems(1) & [...#mixed_instances_policy]])
		tag?: matchN(1, [#tag, [...#tag]])
		warm_pool_size?: number
		timeouts?:       #timeouts
		traffic_source?: matchN(1, [#traffic_source, [...#traffic_source]])
		warm_pool?: matchN(1, [#warm_pool, list.MaxItems(1) & [...#warm_pool]])
	})

	#availability_zone_distribution: close({
		capacity_distribution_strategy?: string
	})

	#capacity_reservation_specification: close({
		capacity_reservation_target?: matchN(1, [_#defs."/$defs/capacity_reservation_specification/$defs/capacity_reservation_target", list.MaxItems(1) & [..._#defs."/$defs/capacity_reservation_specification/$defs/capacity_reservation_target"]])
		capacity_reservation_preference?: string
	})

	#initial_lifecycle_hook: close({
		default_result?:          string
		heartbeat_timeout?:       number
		lifecycle_transition!:    string
		name!:                    string
		notification_metadata?:   string
		notification_target_arn?: string
		role_arn?:                string
	})

	#instance_maintenance_policy: close({
		max_healthy_percentage!: number
		min_healthy_percentage!: number
	})

	#instance_refresh: close({
		preferences?: matchN(1, [_#defs."/$defs/instance_refresh/$defs/preferences", list.MaxItems(1) & [..._#defs."/$defs/instance_refresh/$defs/preferences"]])
		strategy!: string
		triggers?: [...string]
	})

	#launch_template: close({
		id?:      string
		name?:    string
		version?: string
	})

	#mixed_instances_policy: close({
		instances_distribution?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/instances_distribution", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/instances_distribution"]])
		launch_template?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template"]])
	})

	#tag: close({
		key!:                 string
		propagate_at_launch!: bool
		value!:               string
	})

	#timeouts: close({
		delete?: string
		update?: string
	})

	#traffic_source: close({
		identifier!: string
		type?:       string
	})

	#warm_pool: close({
		instance_reuse_policy?: matchN(1, [_#defs."/$defs/warm_pool/$defs/instance_reuse_policy", list.MaxItems(1) & [..._#defs."/$defs/warm_pool/$defs/instance_reuse_policy"]])
		max_group_prepared_capacity?: number
		min_size?:                    number
		pool_state?:                  string
	})

	_#defs: "/$defs/capacity_reservation_specification/$defs/capacity_reservation_target": close({
		capacity_reservation_ids?: [...string]
		capacity_reservation_resource_group_arns?: [...string]
	})

	_#defs: "/$defs/instance_refresh/$defs/preferences": close({
		alarm_specification?: matchN(1, [_#defs."/$defs/instance_refresh/$defs/preferences/$defs/alarm_specification", list.MaxItems(1) & [..._#defs."/$defs/instance_refresh/$defs/preferences/$defs/alarm_specification"]])
		auto_rollback?:    bool
		checkpoint_delay?: string
		checkpoint_percentages?: [...number]
		instance_warmup?:              string
		max_healthy_percentage?:       number
		min_healthy_percentage?:       number
		scale_in_protected_instances?: string
		skip_matching?:                bool
		standby_instances?:            string
	})

	_#defs: "/$defs/instance_refresh/$defs/preferences/$defs/alarm_specification": close({
		alarms?: [...string]
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/instances_distribution": close({
		on_demand_allocation_strategy?:            string
		on_demand_base_capacity?:                  number
		on_demand_percentage_above_base_capacity?: number
		spot_allocation_strategy?:                 string
		spot_instance_pools?:                      number
		spot_max_price?:                           string
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template": close({
		launch_template_specification?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/launch_template_specification", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/launch_template_specification"]])
		override?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override", [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override"]])
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/launch_template_specification": close({
		launch_template_id?:   string
		launch_template_name?: string
		version?:              string
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override": close({
		instance_requirements?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements"]])
		launch_template_specification?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/launch_template_specification", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/launch_template_specification"]])
		instance_type?:     string
		weighted_capacity?: string
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements": close({
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_count?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_count", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_count"]])
		accelerator_types?: [...string]
		allowed_instance_types?: [...string]
		bare_metal?:            string
		burstable_performance?: string
		cpu_manufacturers?: [...string]
		excluded_instance_types?: [...string]
		instance_generations?: [...string]
		local_storage?: string
		local_storage_types?: [...string]
		max_spot_price_as_percentage_of_optimal_on_demand_price?: number
		accelerator_total_memory_mib?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib"]])
		on_demand_max_price_percentage_over_lowest_price?: number
		require_hibernate_support?:                        bool
		spot_max_price_percentage_over_lowest_price?:      number
		baseline_ebs_bandwidth_mbps?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps"]])
		memory_gib_per_vcpu?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu"]])
		memory_mib?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_mib", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_mib"]])
		network_bandwidth_gbps?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps"]])
		network_interface_count?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_interface_count", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_interface_count"]])
		total_local_storage_gb?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb"]])
		vcpu_count?: matchN(1, [_#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/vcpu_count", list.MaxItems(1) & [..._#defs."/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/vcpu_count"]])
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/network_interface_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/instance_requirements/$defs/vcpu_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/mixed_instances_policy/$defs/launch_template/$defs/override/$defs/launch_template_specification": close({
		launch_template_id?:   string
		launch_template_name?: string
		version?:              string
	})

	_#defs: "/$defs/warm_pool/$defs/instance_reuse_policy": close({
		reuse_on_scale_in?: bool
	})
}
