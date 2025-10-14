package res

import "list"

#aws_ecs_capacity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_capacity_provider")
	close({
		arn?: string
		auto_scaling_group_provider?: matchN(1, [#auto_scaling_group_provider, list.MaxItems(1) & [...#auto_scaling_group_provider]])
		cluster?: string
		id?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]: string
		managed_instances_provider?: matchN(1, [#managed_instances_provider, list.MaxItems(1) & [...#managed_instances_provider]])
		tags_all?: [string]: string
	})

	#auto_scaling_group_provider: close({
		managed_scaling?: matchN(1, [_#defs."/$defs/auto_scaling_group_provider/$defs/managed_scaling", list.MaxItems(1) & [..._#defs."/$defs/auto_scaling_group_provider/$defs/managed_scaling"]])
		auto_scaling_group_arn!:         string
		managed_draining?:               string
		managed_termination_protection?: string
	})

	#managed_instances_provider: close({
		instance_launch_template?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template"]])
		infrastructure_role_arn!: string
		propagate_tags?:          string
	})

	_#defs: "/$defs/auto_scaling_group_provider/$defs/managed_scaling": close({
		instance_warmup_period?:    number
		maximum_scaling_step_size?: number
		minimum_scaling_step_size?: number
		status?:                    string
		target_capacity?:           number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template": close({
		instance_requirements?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements"]])
		network_configuration?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/network_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/network_configuration"]])
		storage_configuration?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/storage_configuration", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/storage_configuration"]])
		ec2_instance_profile_arn!: string
		monitoring?:               string
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements": close({
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_count?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_count", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_count"]])
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
		accelerator_total_memory_mib?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_total_memory_mib", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_total_memory_mib"]])
		on_demand_max_price_percentage_over_lowest_price?: number
		require_hibernate_support?:                        bool
		spot_max_price_percentage_over_lowest_price?:      number
		baseline_ebs_bandwidth_mbps?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps"]])
		memory_gib_per_vcpu?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_gib_per_vcpu", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_gib_per_vcpu"]])
		memory_mib?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_mib", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_mib"]])
		network_bandwidth_gbps?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_bandwidth_gbps", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_bandwidth_gbps"]])
		network_interface_count?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_interface_count", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_interface_count"]])
		total_local_storage_gb?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/total_local_storage_gb", list.MaxItems(1) & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/total_local_storage_gb"]])
		vcpu_count?: matchN(1, [_#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/vcpu_count", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/vcpu_count"]])
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/accelerator_total_memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_gib_per_vcpu": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/memory_mib": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_bandwidth_gbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/network_interface_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/total_local_storage_gb": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/instance_requirements/$defs/vcpu_count": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/network_configuration": close({
		security_groups?: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/managed_instances_provider/$defs/instance_launch_template/$defs/storage_configuration": close({
		storage_size_gib!: number
	})
}
