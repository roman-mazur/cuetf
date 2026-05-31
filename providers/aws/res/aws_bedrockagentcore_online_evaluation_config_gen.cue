package res

#aws_bedrockagentcore_online_evaluation_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_online_evaluation_config")
	close({
		data_source_config?: matchN(1, [#data_source_config, [...#data_source_config]])
		evaluator?: matchN(1, [#evaluator, [...#evaluator]])
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?:                      #timeouts
		description?:                   string
		enable_on_create!:              bool
		evaluation_execution_role_arn!: string
		execution_status?:              string
		online_evaluation_config_arn?:  string
		online_evaluation_config_id?:   string
		online_evaluation_config_name!: string
		output_config?: [...close({
			cloudwatch_config?: [...close({
				log_group_name?: string
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#data_source_config: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/data_source_config/$defs/cloudwatch_logs", [..._#defs."/$defs/data_source_config/$defs/cloudwatch_logs"]])
	})

	#evaluator: close({
		evaluator_id!: string
	})

	#rule: close({
		filter?: matchN(1, [_#defs."/$defs/rule/$defs/filter", [..._#defs."/$defs/rule/$defs/filter"]])
		sampling_config?: matchN(1, [_#defs."/$defs/rule/$defs/sampling_config", [..._#defs."/$defs/rule/$defs/sampling_config"]])
		session_config?: matchN(1, [_#defs."/$defs/rule/$defs/session_config", [..._#defs."/$defs/rule/$defs/session_config"]])
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

	_#defs: "/$defs/data_source_config/$defs/cloudwatch_logs": close({
		log_group_names!: [...string]
		service_names!: [...string]
	})

	_#defs: "/$defs/rule/$defs/filter": close({
		value?: matchN(1, [_#defs."/$defs/rule/$defs/filter/$defs/value", [..._#defs."/$defs/rule/$defs/filter/$defs/value"]])
		key!:      string
		operator!: string
	})

	_#defs: "/$defs/rule/$defs/filter/$defs/value": close({
		boolean_value?: bool
		double_value?:  number
		string_value?:  string
	})

	_#defs: "/$defs/rule/$defs/sampling_config": close({
		sampling_percentage!: number
	})

	_#defs: "/$defs/rule/$defs/session_config": close({
		session_timeout_minutes!: number
	})
}
