package res

import "list"

#aws_ec2_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_fleet")
	close({
		arn?:     string
		context?: string
		fleet_instance_set?: matchN(1, [#fleet_instance_set, [...#fleet_instance_set]])
		excess_capacity_termination_policy?: string
		fleet_state?:                        string
		fulfilled_capacity?:                 number
		fulfilled_on_demand_capacity?:       number
		id?:                                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		replace_unhealthy_instances?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		launch_template_config!: matchN(1, [#launch_template_config, list.MaxItems(50) & [_, ...] & [...#launch_template_config]])
		terminate_instances?:                 bool
		terminate_instances_with_expiration?: bool
		type?:                                string
		valid_from?:                          string
		valid_until?:                         string
		on_demand_options?: matchN(1, [#on_demand_options, list.MaxItems(1) & [...#on_demand_options]])
		spot_options?: matchN(1, [#spot_options, list.MaxItems(1) & [...#spot_options]])
		target_capacity_specification!: matchN(1, [#target_capacity_specification, list.MaxItems(1) & [_, ...] & [...#target_capacity_specification]])
		timeouts?: #timeouts
	})

	#fleet_instance_set: close({
		instance_ids?: [...string]
		instance_type?: string
		lifecycle?:     string
		platform?:      string
	})

	#launch_template_config: close({
		launch_template_specification?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/launch_template_specification", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/launch_template_specification"]])
		override?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override", list.MaxItems(300) & [..._#defs."/$defs/launch_template_config/$defs/override"]])
	})

	#on_demand_options: close({
		capacity_reservation_options?: matchN(1, [_#defs."/$defs/on_demand_options/$defs/capacity_reservation_options", list.MaxItems(1) & [..._#defs."/$defs/on_demand_options/$defs/capacity_reservation_options"]])
		allocation_strategy?:      string
		max_total_price?:          string
		min_target_capacity?:      number
		single_availability_zone?: bool
		single_instance_type?:     bool
	})

	#spot_options: close({
		maintenance_strategies?: matchN(1, [_#defs."/$defs/spot_options/$defs/maintenance_strategies", list.MaxItems(1) & [..._#defs."/$defs/spot_options/$defs/maintenance_strategies"]])
		allocation_strategy?:            string
		instance_interruption_behavior?: string
		instance_pools_to_use_count?:    number
		max_total_price?:                string
		min_target_capacity?:            number
		single_availability_zone?:       bool
		single_instance_type?:           bool
	})

	#target_capacity_specification: close({
		default_target_capacity_type!: string
		on_demand_target_capacity?:    number
		spot_target_capacity?:         number
		target_capacity_unit_type?:    string
		total_target_capacity!:        number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/launch_template_config/$defs/launch_template_specification": close({
		launch_template_id?:   string
		launch_template_name?: string
		version!:              string
	})

	_#defs: "/$defs/launch_template_config/$defs/override": close({
		instance_requirements?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements"]])
		availability_zone?: string
		instance_type?:     string
		max_price?:         string
		priority?:          number
		subnet_id?:         string
		weighted_capacity?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements": close({
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_count?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_count", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_count"]])
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
		accelerator_total_memory_mib?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib"]])
		on_demand_max_price_percentage_over_lowest_price?: number
		require_hibernate_support?:                        bool
		spot_max_price_percentage_over_lowest_price?:      number
		baseline_ebs_bandwidth_mbps?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps"]])
		memory_gib_per_vcpu?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu"]])
		memory_mib!: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_mib", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_mib"]])
		network_bandwidth_gbps?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps"]])
		network_interface_count?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_interface_count", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_interface_count"]])
		total_local_storage_gb?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb"]])
		vcpu_count!: matchN(1, [_#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/vcpu_count", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/vcpu_count"]])
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/accelerator_total_memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_gib_per_vcpu": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/memory_mib": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_bandwidth_gbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/network_interface_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/total_local_storage_gb": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/override/$defs/instance_requirements/$defs/vcpu_count": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/on_demand_options/$defs/capacity_reservation_options": close({
		usage_strategy?: string
	})

	_#defs: "/$defs/spot_options/$defs/maintenance_strategies": close({
		capacity_rebalance?: matchN(1, [_#defs."/$defs/spot_options/$defs/maintenance_strategies/$defs/capacity_rebalance", list.MaxItems(1) & [..._#defs."/$defs/spot_options/$defs/maintenance_strategies/$defs/capacity_rebalance"]])
	})

	_#defs: "/$defs/spot_options/$defs/maintenance_strategies/$defs/capacity_rebalance": close({
		replacement_strategy?: string
		termination_delay?:    number
	})
}
