package data

#aws_ecs_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_service")
	close({
		arn?:                           string
		availability_zone_rebalancing?: string
		capacity_provider_strategy?: [...close({
			base?:              number
			capacity_provider?: string
			weight?:            number
		})]
		cluster_arn!: string
		created_at?:  string
		created_by?:  string
		deployment_configuration?: [...close({
			alarms?: [...close({
				alarm_names?: [...string]
				enable?:   bool
				rollback?: bool
			})]
			bake_time_in_minutes?: string
			canary_configuration?: [...close({
				canary_bake_time_in_minutes?: string
				canary_percent?:              number
			})]
			deployment_circuit_breaker?: [...close({
				enable?:   bool
				rollback?: bool
			})]
			lifecycle_hook?: [...close({
				hook_details?:    string
				hook_target_arn?: string
				lifecycle_stages?: [...string]
				role_arn?: string
			})]
			linear_configuration?: [...close({
				step_bake_time_in_minutes?: string
				step_percent?:              number
			})]
			maximum_percent?:         number
			minimum_healthy_percent?: number
			strategy?:                string
		})]
		deployment_controller?: [...close({
			type?: string
		})]
		deployments?: [...close({
			created_at?:      string
			desired_count?:   number
			id?:              string
			pending_count?:   number
			running_count?:   number
			status?:          string
			task_definition?: string
			updated_at?:      string
		})]
		desired_count?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		events?: [...close({
			created_at?: string
			id?:         string
			message?:    string
		})]
		health_check_grace_period_seconds?: number
		iam_role?:                          string
		id?:                                string
		launch_type?:                       string
		load_balancer?: [...close({
			advanced_configuration?: [...close({
				alternate_target_group_arn?: string
				production_listener_rule?:   string
				role_arn?:                   string
				test_listener_rule?:         string
			})]
			container_name?:   string
			container_port?:   number
			elb_name?:         string
			target_group_arn?: string
		})]
		network_configuration?: [...close({
			assign_public_ip?: bool
			security_groups?: [...string]
			subnets?: [...string]
		})]
		ordered_placement_strategy?: [...close({
			field?: string
			type?:  string
		})]
		pending_count?: number
		placement_constraints?: [...close({
			expression?: string
			type?:       string
		})]
		platform_family?:     string
		platform_version?:    string
		propagate_tags?:      string
		running_count?:       number
		scheduling_strategy?: string
		service_name!:        string
		service_registries?: [...close({
			container_name?: string
			container_port?: number
			port?:           number
			registry_arn?:   string
		})]
		status?: string
		tags?: [string]: string
		task_definition?: string
		task_sets?: [...close({
			arn?:              string
			created_at?:       string
			id?:               string
			pending_count?:    number
			running_count?:    number
			stability_status?: string
			status?:           string
			task_definition?:  string
			updated_at?:       string
		})]
	})
}
