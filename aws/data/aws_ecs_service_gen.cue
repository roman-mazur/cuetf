package data

#aws_ecs_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_service")
	close({
		arn?:                           string
		availability_zone_rebalancing?: string
		cluster_arn!:                   string
		desired_count?:                 number
		id?:                            string
		launch_type?:                   string
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
		region?:              string
		scheduling_strategy?: string
		service_name!:        string
		tags?: [string]: string
		task_definition?: string
	})
}
