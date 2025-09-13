package data

import "list"

#aws_ecs_task_execution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_task_execution")
	close({
		client_token?:            string
		cluster!:                 string
		desired_count?:           number
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		group?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		id?:               string
		launch_type?:      string
		platform_version?: string
		propagate_tags?:   string
		capacity_provider_strategy?: matchN(1, [#capacity_provider_strategy, [...#capacity_provider_strategy]])
		reference_id?: string
		started_by?:   string
		tags?: [string]: string
		task_arns?: [...string]
		task_definition!: string
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		overrides?: matchN(1, [#overrides, list.MaxItems(1) & [...#overrides]])
		placement_constraints?: matchN(1, [#placement_constraints, list.MaxItems(10) & [...#placement_constraints]])
		placement_strategy?: matchN(1, [#placement_strategy, list.MaxItems(5) & [...#placement_strategy]])
	})

	#capacity_provider_strategy: close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})

	#network_configuration: close({
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	})

	#overrides: close({
		container_overrides?: matchN(1, [_#defs."/$defs/overrides/$defs/container_overrides", [..._#defs."/$defs/overrides/$defs/container_overrides"]])
		cpu?:                string
		execution_role_arn?: string
		memory?:             string
		task_role_arn?:      string
	})

	#placement_constraints: close({
		expression?: string
		type!:       string
	})

	#placement_strategy: close({
		field?: string
		type!:  string
	})

	_#defs: "/$defs/overrides/$defs/container_overrides": close({
		environment?: matchN(1, [_#defs."/$defs/overrides/$defs/container_overrides/$defs/environment", [..._#defs."/$defs/overrides/$defs/container_overrides/$defs/environment"]])
		command?: [...string]
		cpu?:                number
		memory?:             number
		memory_reservation?: number
		name!:               string
		resource_requirements?: matchN(1, [_#defs."/$defs/overrides/$defs/container_overrides/$defs/resource_requirements", [..._#defs."/$defs/overrides/$defs/container_overrides/$defs/resource_requirements"]])
	})

	_#defs: "/$defs/overrides/$defs/container_overrides/$defs/environment": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/overrides/$defs/container_overrides/$defs/resource_requirements": close({
		type!:  string
		value!: string
	})
}
