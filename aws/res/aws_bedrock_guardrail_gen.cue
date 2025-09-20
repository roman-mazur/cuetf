package res

#aws_bedrock_guardrail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_guardrail")
	close({
		blocked_input_messaging!:   string
		blocked_outputs_messaging!: string
		created_at?:                string
		description?:               string
		guardrail_arn?:             string
		content_policy_config?: matchN(1, [#content_policy_config, [...#content_policy_config]])
		guardrail_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		kms_key_arn?: string
		name!:        string
		contextual_grounding_policy_config?: matchN(1, [#contextual_grounding_policy_config, [...#contextual_grounding_policy_config]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: string
		cross_region_config?: matchN(1, [#cross_region_config, [...#cross_region_config]])
		sensitive_information_policy_config?: matchN(1, [#sensitive_information_policy_config, [...#sensitive_information_policy_config]])
		timeouts?: #timeouts
		topic_policy_config?: matchN(1, [#topic_policy_config, [...#topic_policy_config]])
		word_policy_config?: matchN(1, [#word_policy_config, [...#word_policy_config]])
	})

	#content_policy_config: close({
		filters_config?: matchN(1, [_#defs."/$defs/content_policy_config/$defs/filters_config", [..._#defs."/$defs/content_policy_config/$defs/filters_config"]])
		tier_config?: [...close({
			tier_name?: string
		})]
	})

	#contextual_grounding_policy_config: close({
		filters_config?: matchN(1, [_#defs."/$defs/contextual_grounding_policy_config/$defs/filters_config", [..._#defs."/$defs/contextual_grounding_policy_config/$defs/filters_config"]])
	})

	#cross_region_config: close({
		guardrail_profile_identifier!: string
	})

	#sensitive_information_policy_config: close({
		pii_entities_config?: matchN(1, [_#defs."/$defs/sensitive_information_policy_config/$defs/pii_entities_config", [..._#defs."/$defs/sensitive_information_policy_config/$defs/pii_entities_config"]])
		regexes_config?: matchN(1, [_#defs."/$defs/sensitive_information_policy_config/$defs/regexes_config", [..._#defs."/$defs/sensitive_information_policy_config/$defs/regexes_config"]])
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

	#topic_policy_config: close({
		topics_config?: matchN(1, [_#defs."/$defs/topic_policy_config/$defs/topics_config", [..._#defs."/$defs/topic_policy_config/$defs/topics_config"]])
		tier_config?: [...close({
			tier_name?: string
		})]
	})

	#word_policy_config: close({
		managed_word_lists_config?: matchN(1, [_#defs."/$defs/word_policy_config/$defs/managed_word_lists_config", [..._#defs."/$defs/word_policy_config/$defs/managed_word_lists_config"]])
		words_config?: matchN(1, [_#defs."/$defs/word_policy_config/$defs/words_config", [..._#defs."/$defs/word_policy_config/$defs/words_config"]])
	})

	_#defs: "/$defs/content_policy_config/$defs/filters_config": close({
		input_strength!:  string
		output_strength!: string
		type!:            string
	})

	_#defs: "/$defs/contextual_grounding_policy_config/$defs/filters_config": close({
		threshold!: number
		type!:      string
	})

	_#defs: "/$defs/sensitive_information_policy_config/$defs/pii_entities_config": close({
		action!:         string
		input_action?:   string
		input_enabled?:  bool
		output_action?:  string
		output_enabled?: bool
		type!:           string
	})

	_#defs: "/$defs/sensitive_information_policy_config/$defs/regexes_config": close({
		action!:         string
		description?:    string
		input_action?:   string
		input_enabled?:  bool
		name!:           string
		output_action?:  string
		output_enabled?: bool
		pattern!:        string
	})

	_#defs: "/$defs/topic_policy_config/$defs/topics_config": close({
		definition!: string
		examples?: [...string]
		name!: string
		type!: string
	})

	_#defs: "/$defs/word_policy_config/$defs/managed_word_lists_config": close({
		input_action?:   string
		input_enabled?:  bool
		output_action?:  string
		output_enabled?: bool
		type!:           string
	})

	_#defs: "/$defs/word_policy_config/$defs/words_config": close({
		input_action?:   string
		input_enabled?:  bool
		output_action?:  string
		output_enabled?: bool
		text!:           string
	})
}
