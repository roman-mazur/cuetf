package data

#aws_autoscaling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_autoscaling_group")
	close({
		arn?: string
		availability_zones?: [...string]
		default_cooldown?:      number
		desired_capacity?:      number
		desired_capacity_type?: string
		enabled_metrics?: [...string]
		health_check_grace_period?: number
		health_check_type?:         string
		id?:                        string
		instance_maintenance_policy?: [...close({
			max_healthy_percentage?: number
			min_healthy_percentage?: number
		})]
		launch_configuration?: string
		launch_template?: [...close({
			id?:      string
			name?:    string
			version?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		load_balancers?: [...string]
		max_instance_lifetime?: number
		max_size?:              number
		min_size?:              number
		mixed_instances_policy?: [...close({
			instances_distribution?: [...close({
				on_demand_allocation_strategy?:            string
				on_demand_base_capacity?:                  number
				on_demand_percentage_above_base_capacity?: number
				spot_allocation_strategy?:                 string
				spot_instance_pools?:                      number
				spot_max_price?:                           string
			})]
			launch_template?: [...close({
				launch_template_specification?: [...close({
					launch_template_id?:   string
					launch_template_name?: string
					version?:              string
				})]
				override?: [...close({
					instance_requirements?: [...close({
						accelerator_count?: [...close({
							max?: number
							min?: number
						})]
						accelerator_manufacturers?: [...string]
						accelerator_names?: [...string]
						accelerator_total_memory_mib?: [...close({
							max?: number
							min?: number
						})]
						accelerator_types?: [...string]
						allowed_instance_types?: [...string]
						bare_metal?: string
						baseline_ebs_bandwidth_mbps?: [...close({
							max?: number
							min?: number
						})]
						burstable_performance?: string
						cpu_manufacturers?: [...string]
						excluded_instance_types?: [...string]
						instance_generations?: [...string]
						local_storage?: string
						local_storage_types?: [...string]
						max_spot_price_as_percentage_of_optimal_on_demand_price?: number
						memory_gib_per_vcpu?: [...close({
							max?: number
							min?: number
						})]
						memory_mib?: [...close({
							max?: number
							min?: number
						})]
						network_bandwidth_gbps?: [...close({
							max?: number
							min?: number
						})]
						network_interface_count?: [...close({
							max?: number
							min?: number
						})]
						on_demand_max_price_percentage_over_lowest_price?: number
						require_hibernate_support?:                        bool
						spot_max_price_percentage_over_lowest_price?:      number
						total_local_storage_gb?: [...close({
							max?: number
							min?: number
						})]
						vcpu_count?: [...close({
							max?: number
							min?: number
						})]
					})]
					instance_type?: string
					launch_template_specification?: [...close({
						launch_template_id?:   string
						launch_template_name?: string
						version?:              string
					})]
					weighted_capacity?: string
				})]
			})]
		})]
		name!:                                  string
		new_instances_protected_from_scale_in?: bool
		placement_group?:                       string
		predicted_capacity?:                    number
		service_linked_role_arn?:               string
		status?:                                string
		suspended_processes?: [...string]
		tag?: [...close({
			key?:                 string
			propagate_at_launch?: bool
			value?:               string
		})]
		target_group_arns?: [...string]
		termination_policies?: [...string]
		traffic_source?: [...close({
			identifier?: string
			type?:       string
		})]
		vpc_zone_identifier?: string
		warm_pool?: [...close({
			instance_reuse_policy?: [...close({
				reuse_on_scale_in?: bool
			})]
			max_group_prepared_capacity?: number
			min_size?:                    number
			pool_state?:                  string
		})]
		warm_pool_size?: number
	})
}
