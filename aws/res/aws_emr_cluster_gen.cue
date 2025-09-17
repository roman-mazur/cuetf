package res

import "list"

#aws_emr_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_cluster")
	close({
		additional_info?: string
		applications?: [...string]
		arn?:                 string
		autoscaling_role?:    string
		cluster_state?:       string
		configurations?:      string
		configurations_json?: string
		custom_ami_id?:       string
		auto_termination_policy?: matchN(1, [#auto_termination_policy, list.MaxItems(1) & [...#auto_termination_policy]])
		ebs_root_volume_size?:              number
		id?:                                string
		keep_job_flow_alive_when_no_steps?: bool
		list_steps_states?: [...string]
		log_encryption_kms_key_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		log_uri?:           string
		master_public_dns?: string
		name!:              string
		bootstrap_action?: matchN(1, [#bootstrap_action, [...#bootstrap_action]])
		os_release_label?: string
		placement_group_config?: [...close({
			instance_role?:      string
			placement_strategy?: string
		})]
		core_instance_fleet?: matchN(1, [#core_instance_fleet, list.MaxItems(1) & [...#core_instance_fleet]])
		release_label!:       string
		scale_down_behavior?: string
		core_instance_group?: matchN(1, [#core_instance_group, list.MaxItems(1) & [...#core_instance_group]])
		security_configuration?: string
		service_role!:           string
		step?: [...close({
			action_on_failure?: string
			hadoop_jar_step?: [...close({
				args?: [...string]
				jar?:        string
				main_class?: string
				properties?: [string]: string
			})]
			name?: string
		})]
		step_concurrency_level?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		termination_protection?: bool
		ec2_attributes?: matchN(1, [#ec2_attributes, list.MaxItems(1) & [...#ec2_attributes]])
		unhealthy_node_replacement?: bool
		kerberos_attributes?: matchN(1, [#kerberos_attributes, list.MaxItems(1) & [...#kerberos_attributes]])
		visible_to_all_users?: bool
		master_instance_fleet?: matchN(1, [#master_instance_fleet, list.MaxItems(1) & [...#master_instance_fleet]])
		master_instance_group?: matchN(1, [#master_instance_group, list.MaxItems(1) & [...#master_instance_group]])
	})

	#auto_termination_policy: close({
		idle_timeout?: number
	})

	#bootstrap_action: close({
		args?: [...string]
		name!: string
		path!: string
	})

	#core_instance_fleet: close({
		instance_type_configs?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/instance_type_configs", [..._#defs."/$defs/core_instance_fleet/$defs/instance_type_configs"]])
		id?:                             string
		name?:                           string
		provisioned_on_demand_capacity?: number
		provisioned_spot_capacity?:      number
		target_on_demand_capacity?:      number
		target_spot_capacity?:           number
		launch_specifications?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/launch_specifications", list.MaxItems(1) & [..._#defs."/$defs/core_instance_fleet/$defs/launch_specifications"]])
	})

	#core_instance_group: close({
		ebs_config?: matchN(1, [_#defs."/$defs/core_instance_group/$defs/ebs_config", [..._#defs."/$defs/core_instance_group/$defs/ebs_config"]])
		autoscaling_policy?: string
		bid_price?:          string
		id?:                 string
		instance_count?:     number
		instance_type!:      string
		name?:               string
	})

	#ec2_attributes: close({
		additional_master_security_groups?: string
		additional_slave_security_groups?:  string
		emr_managed_master_security_group?: string
		emr_managed_slave_security_group?:  string
		instance_profile!:                  string
		key_name?:                          string
		service_access_security_group?:     string
		subnet_id?:                         string
		subnet_ids?: [...string]
	})

	#kerberos_attributes: close({
		ad_domain_join_password?:              string
		ad_domain_join_user?:                  string
		cross_realm_trust_principal_password?: string
		kdc_admin_password!:                   string
		realm!:                                string
	})

	#master_instance_fleet: close({
		instance_type_configs?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/instance_type_configs", [..._#defs."/$defs/master_instance_fleet/$defs/instance_type_configs"]])
		id?:                             string
		name?:                           string
		provisioned_on_demand_capacity?: number
		provisioned_spot_capacity?:      number
		target_on_demand_capacity?:      number
		target_spot_capacity?:           number
		launch_specifications?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/launch_specifications", list.MaxItems(1) & [..._#defs."/$defs/master_instance_fleet/$defs/launch_specifications"]])
	})

	#master_instance_group: close({
		ebs_config?: matchN(1, [_#defs."/$defs/master_instance_group/$defs/ebs_config", [..._#defs."/$defs/master_instance_group/$defs/ebs_config"]])
		bid_price?:      string
		id?:             string
		instance_count?: number
		instance_type!:  string
		name?:           string
	})

	_#defs: "/$defs/core_instance_fleet/$defs/instance_type_configs": close({
		configurations?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/configurations", [..._#defs."/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/configurations"]])
		bid_price?:                                  string
		bid_price_as_percentage_of_on_demand_price?: number
		instance_type!:                              string
		weighted_capacity?:                          number
		ebs_config?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/ebs_config", [..._#defs."/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/ebs_config"]])
	})

	_#defs: "/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/configurations": close({
		classification?: string
		properties?: [string]: string
	})

	_#defs: "/$defs/core_instance_fleet/$defs/instance_type_configs/$defs/ebs_config": close({
		iops?:                 number
		size!:                 number
		type!:                 string
		volumes_per_instance?: number
	})

	_#defs: "/$defs/core_instance_fleet/$defs/launch_specifications": close({
		on_demand_specification?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification", [..._#defs."/$defs/core_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification"]])
		spot_specification?: matchN(1, [_#defs."/$defs/core_instance_fleet/$defs/launch_specifications/$defs/spot_specification", [..._#defs."/$defs/core_instance_fleet/$defs/launch_specifications/$defs/spot_specification"]])
	})

	_#defs: "/$defs/core_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification": close({
		allocation_strategy!: string
	})

	_#defs: "/$defs/core_instance_fleet/$defs/launch_specifications/$defs/spot_specification": close({
		allocation_strategy!:      string
		block_duration_minutes?:   number
		timeout_action!:           string
		timeout_duration_minutes!: number
	})

	_#defs: "/$defs/core_instance_group/$defs/ebs_config": close({
		iops?:                 number
		size!:                 number
		throughput?:           number
		type!:                 string
		volumes_per_instance?: number
	})

	_#defs: "/$defs/master_instance_fleet/$defs/instance_type_configs": close({
		configurations?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/configurations", [..._#defs."/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/configurations"]])
		bid_price?:                                  string
		bid_price_as_percentage_of_on_demand_price?: number
		instance_type!:                              string
		weighted_capacity?:                          number
		ebs_config?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/ebs_config", [..._#defs."/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/ebs_config"]])
	})

	_#defs: "/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/configurations": close({
		classification?: string
		properties?: [string]: string
	})

	_#defs: "/$defs/master_instance_fleet/$defs/instance_type_configs/$defs/ebs_config": close({
		iops?:                 number
		size!:                 number
		type!:                 string
		volumes_per_instance?: number
	})

	_#defs: "/$defs/master_instance_fleet/$defs/launch_specifications": close({
		on_demand_specification?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification", [..._#defs."/$defs/master_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification"]])
		spot_specification?: matchN(1, [_#defs."/$defs/master_instance_fleet/$defs/launch_specifications/$defs/spot_specification", [..._#defs."/$defs/master_instance_fleet/$defs/launch_specifications/$defs/spot_specification"]])
	})

	_#defs: "/$defs/master_instance_fleet/$defs/launch_specifications/$defs/on_demand_specification": close({
		allocation_strategy!: string
	})

	_#defs: "/$defs/master_instance_fleet/$defs/launch_specifications/$defs/spot_specification": close({
		allocation_strategy!:      string
		block_duration_minutes?:   number
		timeout_action!:           string
		timeout_duration_minutes!: number
	})

	_#defs: "/$defs/master_instance_group/$defs/ebs_config": close({
		iops?:                 number
		size!:                 number
		throughput?:           number
		type!:                 string
		volumes_per_instance?: number
	})
}
