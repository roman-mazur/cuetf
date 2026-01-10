package res

#aws_ecs_express_gateway_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecs_express_gateway_service")
	close({
		cluster?:                 string
		cpu?:                     string
		current_deployment?:      string
		execution_role_arn!:      string
		health_check_path?:       string
		infrastructure_role_arn!: string
		ingress_paths?: [...close({
			access_type?: string
			endpoint?:    string
		})]
		memory?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		network_configuration?: [...close({
			security_groups?: [...string]
			subnets?: [...string]
		})]
		primary_container?: matchN(1, [#primary_container, [...#primary_container]])
		timeouts?: #timeouts
		scaling_target?: [...close({
			auto_scaling_metric?:       string
			auto_scaling_target_value?: number
			max_task_count?:            number
			min_task_count?:            number
		})]
		service_arn?:          string
		service_name?:         string
		service_revision_arn?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		task_role_arn?:         string
		wait_for_steady_state?: bool
	})

	#primary_container: close({
		environment?: matchN(1, [_#defs."/$defs/primary_container/$defs/environment", [..._#defs."/$defs/primary_container/$defs/environment"]])
		aws_logs_configuration?: [...close({
			log_group?:         string
			log_stream_prefix?: string
		})]
		command?: [...string]
		container_port?: number
		image!:          string
		repository_credentials?: matchN(1, [_#defs."/$defs/primary_container/$defs/repository_credentials", [..._#defs."/$defs/primary_container/$defs/repository_credentials"]])
		secret?: matchN(1, [_#defs."/$defs/primary_container/$defs/secret", [..._#defs."/$defs/primary_container/$defs/secret"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/primary_container/$defs/environment": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/primary_container/$defs/repository_credentials": close({
		credentials_parameter!: string
	})

	_#defs: "/$defs/primary_container/$defs/secret": close({
		name!:       string
		value_from!: string
	})
}
