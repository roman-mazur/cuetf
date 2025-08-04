package res

import "list"

#aws_codedeploy_deployment_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codedeploy_deployment_group")
	close({
		app_name!: string
		arn?:      string
		autoscaling_groups?: [...string]
		compute_platform?:            string
		deployment_config_name?:      string
		deployment_group_id?:         string
		deployment_group_name!:       string
		id?:                          string
		outdated_instances_strategy?: string
		region?:                      string
		service_role_arn!:            string
		alarm_configuration?: matchN(1, [#alarm_configuration, list.MaxItems(1) & [...#alarm_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		termination_hook_enabled?: bool
		auto_rollback_configuration?: matchN(1, [#auto_rollback_configuration, list.MaxItems(1) & [...#auto_rollback_configuration]])
		blue_green_deployment_config?: matchN(1, [#blue_green_deployment_config, list.MaxItems(1) & [...#blue_green_deployment_config]])
		deployment_style?: matchN(1, [#deployment_style, list.MaxItems(1) & [...#deployment_style]])
		ec2_tag_filter?: matchN(1, [#ec2_tag_filter, [...#ec2_tag_filter]])
		ec2_tag_set?: matchN(1, [#ec2_tag_set, [...#ec2_tag_set]])
		ecs_service?: matchN(1, [#ecs_service, list.MaxItems(1) & [...#ecs_service]])
		load_balancer_info?: matchN(1, [#load_balancer_info, list.MaxItems(1) & [...#load_balancer_info]])
		on_premises_instance_tag_filter?: matchN(1, [#on_premises_instance_tag_filter, [...#on_premises_instance_tag_filter]])
		trigger_configuration?: matchN(1, [#trigger_configuration, [...#trigger_configuration]])
	})

	#alarm_configuration: close({
		alarms?: [...string]
		enabled?:                   bool
		ignore_poll_alarm_failure?: bool
	})

	#auto_rollback_configuration: close({
		enabled?: bool
		events?: [...string]
	})

	#blue_green_deployment_config: close({
		deployment_ready_option?: matchN(1, [_#defs."/$defs/blue_green_deployment_config/$defs/deployment_ready_option", list.MaxItems(1) & [..._#defs."/$defs/blue_green_deployment_config/$defs/deployment_ready_option"]])
		green_fleet_provisioning_option?: matchN(1, [_#defs."/$defs/blue_green_deployment_config/$defs/green_fleet_provisioning_option", list.MaxItems(1) & [..._#defs."/$defs/blue_green_deployment_config/$defs/green_fleet_provisioning_option"]])
		terminate_blue_instances_on_deployment_success?: matchN(1, [_#defs."/$defs/blue_green_deployment_config/$defs/terminate_blue_instances_on_deployment_success", list.MaxItems(1) & [..._#defs."/$defs/blue_green_deployment_config/$defs/terminate_blue_instances_on_deployment_success"]])
	})

	#deployment_style: close({
		deployment_option?: string
		deployment_type?:   string
	})

	#ec2_tag_filter: close({
		key?:   string
		type?:  string
		value?: string
	})

	#ec2_tag_set: close({
		ec2_tag_filter?: matchN(1, [_#defs."/$defs/ec2_tag_set/$defs/ec2_tag_filter", [..._#defs."/$defs/ec2_tag_set/$defs/ec2_tag_filter"]])
	})

	#ecs_service: close({
		cluster_name!: string
		service_name!: string
	})

	#load_balancer_info: close({
		elb_info?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/elb_info", [..._#defs."/$defs/load_balancer_info/$defs/elb_info"]])
		target_group_info?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/target_group_info", [..._#defs."/$defs/load_balancer_info/$defs/target_group_info"]])
		target_group_pair_info?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/target_group_pair_info", list.MaxItems(1) & [..._#defs."/$defs/load_balancer_info/$defs/target_group_pair_info"]])
	})

	#on_premises_instance_tag_filter: close({
		key?:   string
		type?:  string
		value?: string
	})

	#trigger_configuration: close({
		trigger_events!: [...string]
		trigger_name!:       string
		trigger_target_arn!: string
	})

	_#defs: "/$defs/blue_green_deployment_config/$defs/deployment_ready_option": close({
		action_on_timeout?:    string
		wait_time_in_minutes?: number
	})

	_#defs: "/$defs/blue_green_deployment_config/$defs/green_fleet_provisioning_option": close({
		action?: string
	})

	_#defs: "/$defs/blue_green_deployment_config/$defs/terminate_blue_instances_on_deployment_success": close({
		action?:                           string
		termination_wait_time_in_minutes?: number
	})

	_#defs: "/$defs/ec2_tag_set/$defs/ec2_tag_filter": close({
		key?:   string
		type?:  string
		value?: string
	})

	_#defs: "/$defs/load_balancer_info/$defs/elb_info": close({
		name?: string
	})

	_#defs: "/$defs/load_balancer_info/$defs/target_group_info": close({
		name?: string
	})

	_#defs: "/$defs/load_balancer_info/$defs/target_group_pair_info": close({
		prod_traffic_route?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/prod_traffic_route", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/prod_traffic_route"]])
		target_group?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/target_group", list.MaxItems(2) & [_, ...] & [..._#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/target_group"]])
		test_traffic_route?: matchN(1, [_#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/test_traffic_route", list.MaxItems(1) & [..._#defs."/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/test_traffic_route"]])
	})

	_#defs: "/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/prod_traffic_route": close({
		listener_arns!: [...string]
	})

	_#defs: "/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/target_group": close({
		name!: string
	})

	_#defs: "/$defs/load_balancer_info/$defs/target_group_pair_info/$defs/test_traffic_route": close({
		listener_arns!: [...string]
	})
}
