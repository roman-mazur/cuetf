package res

import "list"

#aws_ecs_task_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_task_set")
	close({
		arn?:     string
		cluster!: string
		capacity_provider_strategy?: matchN(1, [#capacity_provider_strategy, [...#capacity_provider_strategy]])
		load_balancer?: matchN(1, [#load_balancer, [...#load_balancer]])
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		scale?: matchN(1, [#scale, list.MaxItems(1) & [...#scale]])
		service_registries?: matchN(1, [#service_registries, list.MaxItems(1) & [...#service_registries]])
		external_id?:      string
		force_delete?:     bool
		id?:               string
		launch_type?:      string
		platform_version?: string
		region?:           string
		service!:          string
		stability_status?: string
		status?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		task_definition!:           string
		task_set_id?:               string
		wait_until_stable?:         bool
		wait_until_stable_timeout?: string
	})

	#capacity_provider_strategy: close({
		base?:              number
		capacity_provider!: string
		weight!:            number
	})

	#load_balancer: close({
		container_name!:     string
		container_port?:     number
		load_balancer_name?: string
		target_group_arn?:   string
	})

	#network_configuration: close({
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	})

	#scale: close({
		unit?:  string
		value?: number
	})

	#service_registries: close({
		container_name?: string
		container_port?: number
		port?:           number
		registry_arn!:   string
	})
}
