package res

import "list"

#aws_ecs_task_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_task_set")
	arn?:              string
	cluster!:          string
	external_id?:      string
	force_delete?:     bool
	id?:               string
	launch_type?:      string
	platform_version?: string
	service!:          string
	stability_status?: string
	status?:           string
	tags?: [string]: string
	tags_all?: [string]: string
	task_definition!:           string
	task_set_id?:               string
	wait_until_stable?:         bool
	wait_until_stable_timeout?: string
	capacity_provider_strategy?: #capacity_provider_strategy | [...#capacity_provider_strategy]
	load_balancer?: #load_balancer | [...#load_balancer]
	network_configuration?: #network_configuration | list.MaxItems(1) & [...#network_configuration]
	scale?: #scale | list.MaxItems(1) & [...#scale]
	service_registries?: #service_registries | list.MaxItems(1) & [...#service_registries]

	#capacity_provider_strategy: {
		base?:              number
		capacity_provider!: string
		weight!:            number
	}

	#load_balancer: {
		container_name!:     string
		container_port?:     number
		load_balancer_name?: string
		target_group_arn?:   string
	}

	#network_configuration: {
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	}

	#scale: {
		unit?:  string
		value?: number
	}

	#service_registries: {
		container_name?: string
		container_port?: number
		port?:           number
		registry_arn!:   string
	}
}
