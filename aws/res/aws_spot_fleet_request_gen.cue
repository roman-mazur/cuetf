package res

import "list"

#aws_spot_fleet_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_spot_fleet_request")
	close({
		allocation_strategy?:                string
		client_token?:                       string
		context?:                            string
		excess_capacity_termination_policy?: string
		fleet_type?:                         string
		iam_fleet_role!:                     string
		id?:                                 string
		instance_interruption_behaviour?:    string
		instance_pools_to_use_count?:        number
		launch_specification?: matchN(1, [#launch_specification, [...#launch_specification]])
		load_balancers?: [...string]
		on_demand_allocation_strategy?: string
		on_demand_max_total_price?:     string
		on_demand_target_capacity?:     number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		launch_template_config?: matchN(1, [#launch_template_config, [...#launch_template_config]])
		replace_unhealthy_instances?: bool
		spot_price?:                  string
		spot_request_state?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_capacity!:           number
		target_capacity_unit_type?: string
		target_group_arns?: [...string]
		terminate_instances_on_delete?: string
		spot_maintenance_strategies?: matchN(1, [#spot_maintenance_strategies, list.MaxItems(1) & [...#spot_maintenance_strategies]])
		terminate_instances_with_expiration?: bool
		valid_from?:                          string
		timeouts?:                            #timeouts
		valid_until?:                         string
		wait_for_fulfillment?:                bool
	})

	#launch_specification: close({
		ami!: string
		ebs_block_device?: matchN(1, [_#defs."/$defs/launch_specification/$defs/ebs_block_device", [..._#defs."/$defs/launch_specification/$defs/ebs_block_device"]])
		associate_public_ip_address?: bool
		availability_zone?:           string
		ebs_optimized?:               bool
		iam_instance_profile?:        string
		iam_instance_profile_arn?:    string
		instance_type!:               string
		key_name?:                    string
		monitoring?:                  bool
		placement_group?:             string
		ephemeral_block_device?: matchN(1, [_#defs."/$defs/launch_specification/$defs/ephemeral_block_device", [..._#defs."/$defs/launch_specification/$defs/ephemeral_block_device"]])
		placement_tenancy?: string
		spot_price?:        string
		subnet_id?:         string
		tags?: [string]: string
		root_block_device?: matchN(1, [_#defs."/$defs/launch_specification/$defs/root_block_device", [..._#defs."/$defs/launch_specification/$defs/root_block_device"]])
		user_data?: string
		vpc_security_group_ids?: [...string]
		weighted_capacity?: string
	})

	#launch_template_config: close({
		launch_template_specification?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/launch_template_specification", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/launch_template_config/$defs/launch_template_specification"]])
		overrides?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides", [..._#defs."/$defs/launch_template_config/$defs/overrides"]])
	})

	#spot_maintenance_strategies: close({
		capacity_rebalance?: matchN(1, [_#defs."/$defs/spot_maintenance_strategies/$defs/capacity_rebalance", list.MaxItems(1) & [..._#defs."/$defs/spot_maintenance_strategies/$defs/capacity_rebalance"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/launch_specification/$defs/ebs_block_device": close({
		delete_on_termination?: bool
		device_name!:           string
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})

	_#defs: "/$defs/launch_specification/$defs/ephemeral_block_device": close({
		device_name!:  string
		virtual_name!: string
	})

	_#defs: "/$defs/launch_specification/$defs/root_block_device": close({
		delete_on_termination?: bool
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})

	_#defs: "/$defs/launch_template_config/$defs/launch_template_specification": close({
		id?:      string
		name?:    string
		version?: string
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides": close({
		instance_requirements?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements"]])
		availability_zone?: string
		instance_type?:     string
		priority?:          number
		spot_price?:        string
		subnet_id?:         string
		weighted_capacity?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements": close({
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_types?: [...string]
		allowed_instance_types?: [...string]
		bare_metal?:            string
		burstable_performance?: string
		cpu_manufacturers?: [...string]
		excluded_instance_types?: [...string]
		instance_generations?: [...string]
		local_storage?: string
		accelerator_count?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_count", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_count"]])
		local_storage_types?: [...string]
		accelerator_total_memory_mib?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_total_memory_mib", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_total_memory_mib"]])
		baseline_ebs_bandwidth_mbps?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps"]])
		memory_gib_per_vcpu?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_gib_per_vcpu", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_gib_per_vcpu"]])
		on_demand_max_price_percentage_over_lowest_price?: number
		require_hibernate_support?:                        bool
		memory_mib?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_mib", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_mib"]])
		network_bandwidth_gbps?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_bandwidth_gbps", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_bandwidth_gbps"]])
		spot_max_price_percentage_over_lowest_price?: number
		network_interface_count?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_interface_count", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_interface_count"]])
		total_local_storage_gb?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/total_local_storage_gb", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/total_local_storage_gb"]])
		vcpu_count?: matchN(1, [_#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/vcpu_count", list.MaxItems(1) & [..._#defs."/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/vcpu_count"]])
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/accelerator_total_memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_gib_per_vcpu": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_bandwidth_gbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/network_interface_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/total_local_storage_gb": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/launch_template_config/$defs/overrides/$defs/instance_requirements/$defs/vcpu_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/spot_maintenance_strategies/$defs/capacity_rebalance": close({
		replacement_strategy?: string
	})
}
