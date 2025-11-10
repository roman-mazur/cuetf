package res

import "list"

#aws_sagemaker_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_endpoint")
	close({
		arn?:                  string
		endpoint_config_name!: string
		id?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		deployment_config?: matchN(1, [#deployment_config, list.MaxItems(1) & [...#deployment_config]])
	})

	#deployment_config: close({
		auto_rollback_configuration?: matchN(1, [_#defs."/$defs/deployment_config/$defs/auto_rollback_configuration", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/auto_rollback_configuration"]])
		blue_green_update_policy?: matchN(1, [_#defs."/$defs/deployment_config/$defs/blue_green_update_policy", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/blue_green_update_policy"]])
		rolling_update_policy?: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy"]])
	})

	_#defs: "/$defs/deployment_config/$defs/auto_rollback_configuration": close({
		alarms?: matchN(1, [_#defs."/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms", list.MaxItems(10) & [..._#defs."/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms"]])
	})

	_#defs: "/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms": close({
		alarm_name!: string
	})

	_#defs: "/$defs/deployment_config/$defs/blue_green_update_policy": close({
		traffic_routing_configuration!: matchN(1, [_#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration"]])
		maximum_execution_timeout_in_seconds?: number
		termination_wait_in_seconds?:          number
	})

	_#defs: "/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration": close({
		canary_size?: matchN(1, [_#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/canary_size", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/canary_size"]])
		linear_step_size?: matchN(1, [_#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/linear_step_size", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/linear_step_size"]])
		type!:                     string
		wait_interval_in_seconds!: number
	})

	_#defs: "/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/canary_size": close({
		type!:  string
		value!: number
	})

	_#defs: "/$defs/deployment_config/$defs/blue_green_update_policy/$defs/traffic_routing_configuration/$defs/linear_step_size": close({
		type!:  string
		value!: number
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy": close({
		maximum_batch_size!: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size"]])
		rollback_maximum_batch_size?: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size", list.MaxItems(1) & [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size"]])
		maximum_execution_timeout_in_seconds?: number
		wait_interval_in_seconds!:             number
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size": close({
		type!:  string
		value!: number
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size": close({
		type!:  string
		value!: number
	})
}
