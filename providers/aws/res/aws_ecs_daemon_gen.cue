package res

#aws_ecs_daemon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecs_daemon")
	close({
		deployment_configuration?: matchN(1, [#deployment_configuration, [...#deployment_configuration]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		capacity_provider_arns!: [...string]
		cluster_arn?:                string
		daemon_task_definition_arn!: string
		deployment_arn?:             string
		enable_ecs_managed_tags?:    bool
		enable_execute_command?:     bool
		name!:                       string
		propagate_tags?:             string
		status?:                     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#deployment_configuration: close({
		alarms?: matchN(1, [_#defs."/$defs/deployment_configuration/$defs/alarms", [..._#defs."/$defs/deployment_configuration/$defs/alarms"]])
		bake_time_in_minutes?: number
		drain_percent?:        number
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/deployment_configuration/$defs/alarms": close({
		alarm_names?: [...string]
		enable?: bool
	})
}
