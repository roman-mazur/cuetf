package res

aws_bedrockagentcore_memory_strategy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_memory_strategy")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		memory_record_schema?: matchN(1, [#memory_record_schema, [...#memory_record_schema]])
		reflection_configuration?: matchN(1, [#reflection_configuration, [...#reflection_configuration]])
		timeouts?:    #timeouts
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		memory_id!:          string
		memory_strategy_id?: string
		name!:               string
		namespace_templates?: [...string]
		type!: string
	})

	#configuration: close({
		consolidation?: matchN(1, [_#defs."/$defs/configuration/$defs/consolidation", [..._#defs."/$defs/configuration/$defs/consolidation"]])
		extraction?: matchN(1, [_#defs."/$defs/configuration/$defs/extraction", [..._#defs."/$defs/configuration/$defs/extraction"]])
		reflection?: matchN(1, [_#defs."/$defs/configuration/$defs/reflection", [..._#defs."/$defs/configuration/$defs/reflection"]])
		self_managed_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration", [..._#defs."/$defs/configuration/$defs/self_managed_configuration"]])
		type!: string
	})

	#memory_record_schema: close({
		metadata_schema?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema"]])
	})

	#reflection_configuration: close({
		namespace_templates!: [...string]
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

	_#defs: "/$defs/configuration/$defs/consolidation": close({
		append_to_prompt!: string
		model_id!:         string
	})

	_#defs: "/$defs/configuration/$defs/extraction": close({
		append_to_prompt!: string
		model_id!:         string
	})

	_#defs: "/$defs/configuration/$defs/reflection": close({
		append_to_prompt!: string
		model_id!:         string
		namespace_templates!: [...string]
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration": close({
		invocation_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/invocation_configuration", [..._#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/invocation_configuration"]])
		trigger_conditions?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions", [..._#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions"]])
		historical_context_window_size?: number
		trigger_conditions_actual?: [...close({
			message_based_trigger?: [...close({
				message_count?: number
			})]
			time_based_trigger?: [...close({
				idle_session_timeout?: number
			})]
			token_based_trigger?: [...close({
				token_count?: number
			})]
		})]
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration/$defs/invocation_configuration": close({
		payload_delivery_bucket_name!: string
		topic_arn!:                    string
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions": close({
		message_based_trigger?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/message_based_trigger", [..._#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/message_based_trigger"]])
		time_based_trigger?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/time_based_trigger", [..._#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/time_based_trigger"]])
		token_based_trigger?: matchN(1, [_#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/token_based_trigger", [..._#defs."/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/token_based_trigger"]])
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/message_based_trigger": close({
		message_count!: number
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/time_based_trigger": close({
		idle_session_timeout!: number
	})

	_#defs: "/$defs/configuration/$defs/self_managed_configuration/$defs/trigger_conditions/$defs/token_based_trigger": close({
		token_count!: number
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema": close({
		extraction_config?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config"]])
		extraction_type?: string
		key!:             string
		type?:            string
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config": close({
		llm_extraction_config?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config"]])
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config": close({
		validation?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation"]])
		definition!:                 string
		llm_extraction_instruction?: string
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation": close({
		number_validation?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/number_validation", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/number_validation"]])
		string_list_validation?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_list_validation", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_list_validation"]])
		string_validation?: matchN(1, [_#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_validation", [..._#defs."/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_validation"]])
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/number_validation": close({
		max_value?: number
		min_value?: number
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_list_validation": close({
		allowed_values?: [...string]
		max_items?: number
	})

	_#defs: "/$defs/memory_record_schema/$defs/metadata_schema/$defs/extraction_config/$defs/llm_extraction_config/$defs/validation/$defs/string_validation": close({
		allowed_values!: [...string]
	})
}
